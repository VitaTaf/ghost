.class Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .prologue
    .line 3788
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .prologue
    .line 3788
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/audio/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$AudioHandler;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 3788
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 4065
    if-eqz p1, :cond_0

    .line 4067
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 4068
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4073
    :cond_0
    :goto_0
    return-void

    .line 4069
    :catch_0
    move-exception v0

    .line 4070
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onLoadSoundEffects()Z
    .locals 15

    .prologue
    .line 3861
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 3862
    :try_start_0
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSystemReady:Z
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5000(Lcom/android/server/audio/AudioService;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 3863
    const-string v10, "AudioService"

    const-string v12, "onLoadSoundEffects() called before boot complete"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3864
    const/4 v10, 0x0

    monitor-exit v11

    .line 3979
    :goto_0
    return v10

    .line 3867
    :cond_0
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 3868
    const/4 v10, 0x1

    monitor-exit v11

    goto :goto_0

    .line 3978
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 3871
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->loadTouchSoundAssets()V
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)V

    .line 3873
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v12, Landroid/media/SoundPool$Builder;

    invoke-direct {v12}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v12

    new-instance v13, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v13}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v14, 0xd

    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v12

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$1902(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 3880
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$2002(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .line 3881
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v12, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    iget-object v13, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {v12, v13}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;-><init>(Lcom/android/server/audio/AudioService;)V

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$5202(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 3882
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->start()V

    .line 3883
    const/4 v0, 0x3

    .local v0, "attempts":I
    move v1, v0

    .line 3884
    .end local v0    # "attempts":I
    .local v1, "attempts":I
    :goto_1
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    if-nez v10, :cond_2

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-lez v1, :cond_3

    .line 3887
    :try_start_2
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v10

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v0

    .line 3890
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_1

    .line 3888
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :catch_0
    move-exception v2

    .line 3889
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v10, "AudioService"

    const-string v12, "Interrupted while waiting sound pool listener thread."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 3890
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_1

    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    move v0, v1

    .line 3893
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :cond_3
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v10

    if-nez v10, :cond_5

    .line 3894
    const-string v10, "AudioService"

    const-string v12, "onLoadSoundEffects() SoundPool listener or thread creation error"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3895
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1700(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 3896
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1700(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    .line 3897
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$1702(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 3899
    :cond_4
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$5202(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 3900
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/SoundPool;->release()V

    .line 3901
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$1902(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 3902
    const/4 v10, 0x0

    monitor-exit v11

    goto/16 :goto_0

    .line 3910
    :cond_5
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5300()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v7, v10, [I

    .line 3911
    .local v7, "poolId":[I
    const/4 v4, 0x0

    .local v4, "fileIdx":I
    :goto_2
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5300()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_6

    .line 3912
    const/4 v10, -0x1

    aput v10, v7, v4

    .line 3911
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3920
    :cond_6
    const/4 v6, 0x0

    .line 3921
    .local v6, "numSamples":I
    const/4 v3, 0x0

    .local v3, "effect":I
    :goto_3
    const/16 v10, 0xa

    if-ge v3, v10, :cond_a

    .line 3923
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aget v10, v10, v12

    if-nez v10, :cond_7

    .line 3921
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3926
    :cond_7
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x0

    aget v10, v10, v12

    aget v10, v7, v10

    const/4 v12, -0x1

    if-ne v10, v12, :cond_9

    .line 3927
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "/media/audio/ui/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5300()Ljava/util/List;

    move-result-object v10

    iget-object v13, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v13}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v3

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3930
    .local v5, "filePath":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v12}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v8

    .line 3931
    .local v8, "sampleId":I
    if-gtz v8, :cond_8

    .line 3932
    const-string v10, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Soundpool could not load file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3934
    :cond_8
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aput v8, v10, v12

    .line 3935
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x0

    aget v10, v10, v12

    aput v8, v7, v10

    .line 3936
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 3939
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v8    # "sampleId":I
    :cond_9
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v13}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v3

    const/4 v14, 0x0

    aget v13, v13, v14

    aget v13, v7, v13

    aput v13, v10, v12

    goto/16 :goto_4

    .line 3944
    :cond_a
    if-lez v6, :cond_b

    .line 3945
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3947
    const/4 v0, 0x3

    .line 3948
    const/4 v9, 0x1

    .local v9, "status":I
    move v1, v0

    .line 3949
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    :goto_5
    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-lez v1, :cond_c

    .line 3951
    :try_start_4
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v10

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V

    .line 3952
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->status()I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v9

    move v1, v0

    .line 3955
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_5

    .line 3953
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :catch_1
    move-exception v2

    .line 3954
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v10, "AudioService"

    const-string v12, "Interrupted while waiting sound pool callback."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 3955
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_5

    .line 3958
    .end local v1    # "attempts":I
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "status":I
    .restart local v0    # "attempts":I
    :cond_b
    const/4 v9, -0x1

    .line 3961
    .restart local v9    # "status":I
    :cond_c
    :goto_6
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1700(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 3962
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1700(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    .line 3963
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$1702(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 3965
    :cond_d
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$5202(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 3966
    if-eqz v9, :cond_10

    .line 3967
    const-string v10, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onLoadSoundEffects(), Error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " while loading samples"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    const/4 v3, 0x0

    :goto_7
    const/16 v10, 0xa

    if-ge v3, v10, :cond_f

    .line 3970
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aget v10, v10, v12

    if-lez v10, :cond_e

    .line 3971
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    const/4 v13, -0x1

    aput v13, v10, v12

    .line 3969
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 3975
    :cond_f
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/SoundPool;->release()V

    .line 3976
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$1902(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 3978
    :cond_10
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3979
    if-nez v9, :cond_11

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_0

    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    :cond_12
    move v0, v1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    goto :goto_6
.end method

.method private onPersistSafeVolumeState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 4080
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_safe_volume_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4083
    return-void
.end method

.method private onPlaySoundEffect(II)V
    .locals 11
    .param p1, "effectType"    # I
    .param p2, "volume"    # I

    .prologue
    .line 4014
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$1800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 4016
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    .line 4018
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4019
    monitor-exit v10

    .line 4062
    :goto_0
    return-void

    .line 4023
    :cond_0
    if-gez p2, :cond_1

    .line 4024
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    # getter for: Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5500()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v2, v0

    .line 4029
    .local v2, "volFloat":F
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_2

    .line 4030
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v3, 0x1

    aget v1, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 4061
    :goto_2
    monitor-exit v10

    goto :goto_0

    .end local v2    # "volFloat":F
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4026
    :cond_1
    int-to-float v0, p2

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v2, v0, v1

    .restart local v2    # "volFloat":F
    goto :goto_1

    .line 4033
    :cond_2
    :try_start_1
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4035
    .local v9, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5300()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4037
    .local v8, "filePath":Ljava/lang/String;
    invoke-virtual {v9, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 4038
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 4039
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepare()V

    .line 4040
    invoke-virtual {v9, v2}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 4041
    new-instance v0, Lcom/android/server/audio/AudioService$AudioHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioHandler$1;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 4046
    new-instance v0, Lcom/android/server/audio/AudioService$AudioHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioHandler$2;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v9, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 4052
    invoke-virtual {v9}, Landroid/media/MediaPlayer;->start()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 4053
    .end local v8    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 4054
    .local v7, "ex":Ljava/io/IOException;
    :try_start_3
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IOException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4055
    .end local v7    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 4056
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4057
    .end local v7    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 4058
    .local v7, "ex":Ljava/lang/IllegalStateException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method

.method private onUnloadSoundEffects()V
    .locals 7

    .prologue
    .line 3988
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$1800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 3989
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3990
    monitor-exit v4

    .line 4011
    :goto_0
    return-void

    .line 3993
    :cond_0
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5300()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 3994
    .local v2, "poolId":[I
    const/4 v1, 0x0

    .local v1, "fileIdx":I
    :goto_1
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5300()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3995
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 3994
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3998
    :cond_1
    const/4 v0, 0x0

    .local v0, "effect":I
    :goto_2
    const/16 v3, 0xa

    if-ge v0, v3, :cond_4

    .line 3999
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_3

    .line 3998
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4002
    :cond_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_2

    .line 4003
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 4004
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v3, v5

    .line 4005
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3

    goto :goto_3

    .line 4010
    .end local v0    # "effect":I
    .end local v1    # "fileIdx":I
    .end local v2    # "poolId":[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4008
    .restart local v0    # "effect":I
    .restart local v1    # "fileIdx":I
    .restart local v2    # "poolId":[I
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 4009
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3, v5}, Lcom/android/server/audio/AudioService;->access$1902(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4010
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private persistRingerMode(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .prologue
    .line 3852
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3856
    :goto_0
    return-void

    .line 3855
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 4
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    .line 3839
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3849
    :cond_0
    :goto_0
    return-void

    .line 3842
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4900(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_2

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$4800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3845
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 4
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .prologue
    .line 3826
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 3829
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 3830
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3831
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$4800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[I

    move-result-object v2

    aget v2, v2, v1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$4800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3833
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 3830
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3836
    :cond_1
    return-void
.end method

.method private setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 10
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    .line 3792
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 3794
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 3797
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    .line 3798
    .local v7, "numStreamTypes":I
    add-int/lit8 v9, v7, -0x1

    .local v9, "streamType":I
    :goto_0
    if-ltz v9, :cond_2

    .line 3799
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$4800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v9, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[I

    move-result-object v0

    aget v0, v0, v9

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$4800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 3803
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I
    invoke-static {v0, v9}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;I)I

    move-result v8

    .line 3804
    .local v8, "streamDevice":I
    if-eq p2, v8, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4200(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 v0, p2, 0x380

    if-eqz v0, :cond_0

    .line 3806
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 3808
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 3798
    .end local v8    # "streamDevice":I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 3811
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3813
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/16 v6, 0x1f4

    move v3, p2

    move-object v5, p1

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3821
    return-void

    .line 3811
    .end local v7    # "numStreamTypes":I
    .end local v9    # "streamType":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setForceUse(II)V
    .locals 0
    .param p1, "usage"    # I
    .param p2, "config"    # I

    .prologue
    .line 4076
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4077
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4087
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 4330
    :cond_0
    :goto_0
    return-void

    .line 4090
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    goto :goto_0

    .line 4094
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    goto :goto_0

    .line 4098
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    goto :goto_0

    .line 4102
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_master"

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    goto :goto_0

    .line 4112
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3900(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_master_mute"

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 4124
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    goto :goto_0

    .line 4128
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSystemReady:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$5000(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v1

    if-eqz v1, :cond_2

    .line 4130
    :cond_1
    const-string v1, "AudioService"

    const-string v2, "Media server died."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 4135
    :cond_2
    const-string v1, "AudioService"

    const-string v2, "Media server started."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4141
    const-string v1, "restarting=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4143
    # invokes: Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$5700()V

    .line 4146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 4147
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    .line 4148
    .local v19, "set":Ljava/util/Set;
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 4149
    .local v10, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4150
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 4151
    .local v9, "device":Ljava/util/Map$Entry;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_1

    .line 4156
    .end local v9    # "device":Ljava/util/Map$Entry;
    .end local v10    # "i":Ljava/util/Iterator;
    .end local v19    # "set":Ljava/util/Set;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v10    # "i":Ljava/util/Iterator;
    .restart local v19    # "set":Ljava/util/Set;
    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMode:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;)I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    .line 4161
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mForcedUseForComm:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$5900(Lcom/android/server/audio/AudioService;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4162
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mForcedUseForComm:I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$5900(Lcom/android/server/audio/AudioService;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4163
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$4100(Lcom/android/server/audio/AudioService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xb

    :goto_2
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4167
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v14

    .line 4168
    .local v14, "numStreamTypes":I
    add-int/lit8 v21, v14, -0x1

    .local v21, "streamType":I
    :goto_3
    if-ltz v21, :cond_5

    .line 4169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v1

    aget-object v20, v1, v21

    .line 4170
    .local v20, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v1, 0x0

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$6000(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    move/from16 v0, v21

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 4172
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 4168
    add-int/lit8 v21, v21, -0x1

    goto :goto_3

    .line 4163
    .end local v14    # "numStreamTypes":I
    .end local v20    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v21    # "streamType":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 4176
    .restart local v14    # "numStreamTypes":I
    .restart local v21    # "streamType":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    const/4 v3, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V
    invoke-static {v1, v2, v3}, Lcom/android/server/audio/AudioService;->access$6100(Lcom/android/server/audio/AudioService;IZ)V

    .line 4179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->restoreMasterVolume()V
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)V

    .line 4182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonitorOrientation:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$6300(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->setOrientationForAudioSystem()V
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$6400(Lcom/android/server/audio/AudioService;)V

    .line 4185
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mMonitorRotation:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$6500(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->setRotationForAudioSystem()V
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$800(Lcom/android/server/audio/AudioService;)V

    .line 4189
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4190
    const/4 v3, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$6700(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    :goto_4
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4193
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$6800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4196
    const/4 v3, 0x3

    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$6900(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x8

    :goto_5
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 4199
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 4200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7000(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 4201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7000(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v2

    monitor-enter v2

    .line 4202
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7100(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 4203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$7200(Lcom/android/server/audio/AudioService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService;->setHdmiSystemAudioSupported(Z)I

    .line 4205
    :cond_8
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 4208
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7300(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 4209
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7300(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 4210
    .local v16, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()V

    goto :goto_6

    .line 4212
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v16    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 4190
    :cond_a
    const/16 v1, 0xa

    goto :goto_4

    .line 4193
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    .line 4196
    :cond_b
    const/4 v1, 0x0

    goto :goto_5

    .line 4199
    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    .line 4205
    :catchall_4
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1

    .line 4212
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_c
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 4215
    const-string v1, "restarting=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4219
    .end local v10    # "i":Ljava/util/Iterator;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "numStreamTypes":I
    .end local v19    # "set":Ljava/util/Set;
    .end local v21    # "streamType":I
    :sswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onUnloadSoundEffects()V

    goto/16 :goto_0

    .line 4225
    :sswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    move-result v12

    .line 4226
    .local v12, "loaded":Z
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 4227
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    .line 4228
    .local v17, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v17

    .line 4229
    if-eqz v12, :cond_d

    const/4 v1, 0x0

    :goto_7
    :try_start_a
    move-object/from16 v0, v17

    iput v1, v0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 4230
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notify()V

    .line 4231
    monitor-exit v17

    goto/16 :goto_0

    :catchall_5
    move-exception v1

    monitor-exit v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v1

    .line 4229
    :cond_d
    const/4 v1, -0x1

    goto :goto_7

    .line 4236
    .end local v12    # "loaded":Z
    .end local v17    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :sswitch_9
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->onPlaySoundEffect(II)V

    goto/16 :goto_0

    .line 4241
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 4242
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->access$3600(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 4243
    monitor-exit v2

    goto/16 :goto_0

    :catchall_6
    move-exception v1

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v1

    .line 4248
    :sswitch_b
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->setForceUse(II)V

    goto/16 :goto_0

    .line 4252
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->resetBluetoothSco()V
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7400(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_0

    .line 4256
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    invoke-static {v2, v3, v4, v1}, Lcom/android/server/audio/AudioService;->access$7500(Lcom/android/server/audio/AudioService;IILjava/lang/String;)V

    .line 4257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7600(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 4261
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v1, v3}, Lcom/android/server/audio/AudioService;->access$7700(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 4262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7600(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 4266
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v1, v3}, Lcom/android/server/audio/AudioService;->access$7800(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 4267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7600(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 4271
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    .line 4272
    .local v8, "N":I
    if-lez v8, :cond_e

    .line 4274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 4275
    :try_start_c
    new-instance v18, Landroid/media/AudioRoutesInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 4276
    .local v18, "routes":Landroid/media/AudioRoutesInfo;
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 4277
    :goto_8
    if-lez v8, :cond_e

    .line 4278
    add-int/lit8 v8, v8, -0x1

    .line 4279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/media/IAudioRoutesObserver;

    .line 4281
    .local v15, "obs":Landroid/media/IAudioRoutesObserver;
    :try_start_d
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_8

    .line 4282
    :catch_0
    move-exception v1

    goto :goto_8

    .line 4276
    .end local v15    # "obs":Landroid/media/IAudioRoutesObserver;
    .end local v18    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_7
    move-exception v1

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v1

    .line 4286
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    .line 4291
    .end local v8    # "N":I
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->onCheckMusicActive()V
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_0

    .line 4295
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent()V
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8000(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_0

    .line 4300
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x11

    if-ne v1, v3, :cond_f

    const/4 v1, 0x1

    :goto_9
    # invokes: Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(Z)V
    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$8100(Lcom/android/server/audio/AudioService;Z)V

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x0

    goto :goto_9

    .line 4303
    :sswitch_14
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    goto/16 :goto_0

    .line 4307
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onBroadcastScoConnectionState(I)V
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$8200(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_0

    .line 4311
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    goto/16 :goto_0

    .line 4315
    :sswitch_17
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 4316
    .local v13, "musicActiveMs":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unsafe_volume_music_active_ms"

    const/4 v3, -0x2

    invoke-static {v1, v2, v13, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 4321
    .end local v13    # "musicActiveMs":I
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "microphone_mute"

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 4327
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/audio/AudioService;->access$8300(Lcom/android/server/audio/AudioService;II)V

    goto/16 :goto_0

    .line 4087
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_9
        0x6 -> :sswitch_a
        0x7 -> :sswitch_8
        0x8 -> :sswitch_b
        0x9 -> :sswitch_c
        0xa -> :sswitch_1
        0xb -> :sswitch_4
        0xc -> :sswitch_10
        0xd -> :sswitch_b
        0xe -> :sswitch_11
        0xf -> :sswitch_12
        0x10 -> :sswitch_13
        0x11 -> :sswitch_13
        0x12 -> :sswitch_14
        0x13 -> :sswitch_15
        0x14 -> :sswitch_7
        0x15 -> :sswitch_16
        0x16 -> :sswitch_17
        0x17 -> :sswitch_18
        0x18 -> :sswitch_19
        0x64 -> :sswitch_d
        0x65 -> :sswitch_e
        0x66 -> :sswitch_f
    .end sparse-switch
.end method