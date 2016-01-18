.class Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;
.super Landroid/os/Handler;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 360
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 361
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 365
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 398
    :goto_0
    :pswitch_0
    return-void

    .line 367
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onRcDisplayClear()V
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->access$900(Lcom/android/server/audio/MediaFocusControl;)V

    goto :goto_0

    .line 372
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/PlayerRecord;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onRcDisplayUpdate(Lcom/android/server/audio/PlayerRecord;I)V
    invoke-static {v1, v0, v2}, Lcom/android/server/audio/MediaFocusControl;->access$1000(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/PlayerRecord;I)V

    goto :goto_0

    .line 376
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onReevaluateRemote()V
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->access$1100(Lcom/android/server/audio/MediaFocusControl;)V

    goto :goto_0

    .line 380
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteVolumeObserver;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/audio/MediaFocusControl;->access$1200(Lcom/android/server/audio/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V

    goto :goto_0

    .line 386
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/IRemoteControlDisplay;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/audio/MediaFocusControl;->access$1300(Lcom/android/server/audio/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    goto :goto_0

    .line 391
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onReevaluateRemoteControlDisplays()V
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->access$1400(Lcom/android/server/audio/MediaFocusControl;)V

    goto :goto_0

    .line 395
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/MediaFocusControl;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
