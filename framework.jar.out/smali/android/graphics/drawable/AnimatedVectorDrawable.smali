.class public Landroid/graphics/drawable/AnimatedVectorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedVectorDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    }
.end annotation


# static fields
.field private static final ANIMATED_VECTOR:Ljava/lang/String; = "animated-vector"

.field private static final DBG_ANIMATION_VECTOR_DRAWABLE:Z = false

.field private static final LOGTAG:Ljava/lang/String;

.field private static final TARGET:Ljava/lang/String; = "target"


# instance fields
.field private mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mMutated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const-class v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/AnimatedVectorDrawable;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;)V

    .line 140
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 499
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$1;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/AnimatedVectorDrawable$1;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 143
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, p1, v1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    .line 144
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedVectorDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/AnimatedVectorDrawable$1;

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private isStarted()Z
    .locals 5

    .prologue
    .line 425
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, v4, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    .line 426
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 427
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 428
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 429
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 430
    const/4 v4, 0x1

    .line 433
    .end local v0    # "animator":Landroid/animation/Animator;
    :goto_1
    return v4

    .line 427
    .restart local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 433
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private setupAnimatorsForTarget(Ljava/lang/String;Landroid/animation/Animator;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 398
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawable;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 399
    .local v0, "target":Ljava/lang/Object;
    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 400
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 401
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    .line 402
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    .line 404
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mTargetNameMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 325
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 327
    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 328
    .local v0, "vectorDrawable":Landroid/graphics/drawable/VectorDrawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 331
    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canReverse()Z
    .locals 5

    .prologue
    .line 488
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, v4, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    .line 489
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 490
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 491
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 492
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->canReverse()Z

    move-result v4

    if-nez v4, :cond_0

    .line 493
    const/4 v4, 0x0

    .line 496
    .end local v0    # "animator":Landroid/animation/Animator;
    :goto_1
    return v4

    .line 490
    .restart local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public clearMutated()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 161
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->clearMutated()V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mMutated:Z

    .line 163
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 178
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 179
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->invalidateSelf()V

    .line 182
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget v1, v1, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mChangingConfigurations:I

    .line 168
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 267
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->getOutline(Landroid/graphics/Outline;)V

    .line 268
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 11
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 275
    .local v2, "eventType":I
    const/high16 v5, 0x3f800000    # 1.0f

    .line 276
    .local v5, "pathErrorScale":F
    :goto_0
    const/4 v9, 0x1

    if-eq v2, v9, :cond_5

    .line 277
    const/4 v9, 0x2

    if-ne v2, v9, :cond_2

    .line 278
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, "tagName":Ljava/lang/String;
    const-string v9, "animated-vector"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 280
    sget-object v9, Lcom/android/internal/R$styleable;->AnimatedVectorDrawable:[I

    invoke-static {p1, p4, p3, v9}, Landroid/graphics/drawable/AnimatedVectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 282
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 284
    .local v1, "drawableRes":I
    if-eqz v1, :cond_1

    .line 285
    invoke-virtual {p1, v1, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/VectorDrawable;

    .line 287
    .local v8, "vectorDrawable":Landroid/graphics/drawable/VectorDrawable;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/VectorDrawable;->setAllowCaching(Z)V

    .line 288
    iget-object v9, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/VectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 289
    invoke-virtual {v8}, Landroid/graphics/drawable/VectorDrawable;->getPixelSize()F

    move-result v5

    .line 290
    iget-object v9, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v9, v9, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    if-eqz v9, :cond_0

    .line 291
    iget-object v9, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v9, v9, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/VectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 293
    :cond_0
    iget-object v9, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iput-object v8, v9, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    .line 295
    .end local v8    # "vectorDrawable":Landroid/graphics/drawable/VectorDrawable;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 313
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "drawableRes":I
    .end local v6    # "tagName":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 296
    .restart local v6    # "tagName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "target"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 297
    sget-object v9, Lcom/android/internal/R$styleable;->AnimatedVectorDrawableTarget:[I

    invoke-static {p1, p4, p3, v9}, Landroid/graphics/drawable/AnimatedVectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 299
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 302
    .local v7, "target":Ljava/lang/String;
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 304
    .local v3, "id":I
    if-eqz v3, :cond_4

    .line 305
    invoke-static {p1, p4, v3, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v4

    .line 307
    .local v4, "objectAnimator":Landroid/animation/Animator;
    invoke-direct {p0, v7, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setupAnimatorsForTarget(Ljava/lang/String;Landroid/animation/Animator;)V

    .line 309
    .end local v4    # "objectAnimator":Landroid/animation/Animator;
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 315
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "id":I
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "target":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public isRunning()Z
    .locals 5

    .prologue
    .line 413
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, v4, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    .line 414
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 415
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 416
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 417
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 418
    const/4 v4, 0x1

    .line 421
    .end local v0    # "animator":Landroid/animation/Animator;
    :goto_1
    return v4

    .line 415
    .restart local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 148
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 149
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v2, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;-><init>(Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mMutated:Z

    .line 153
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 186
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 187
    return-void
.end method

.method public onLayoutDirectionChange(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 201
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setLayoutDirection(I)Z

    move-result v0

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 196
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 191
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public reverse()V
    .locals 6

    .prologue
    .line 472
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->canReverse()Z

    move-result v4

    if-nez v4, :cond_1

    .line 473
    sget-object v4, Landroid/graphics/drawable/AnimatedVectorDrawable;->LOGTAG:Ljava/lang/String;

    const-string v5, "AnimatedVectorDrawable can\'t reverse()"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    return-void

    .line 476
    :cond_1
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, v4, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    .line 477
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 478
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 479
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 480
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->reverse()V

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 211
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setAlpha(I)V

    .line 212
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 217
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 226
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->setHotspot(FF)V

    .line 227
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 231
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/VectorDrawable;->setHotspotBounds(IIII)V

    .line 232
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 221
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 222
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 236
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 237
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 241
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mVectorDrawable:Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->setVisible(ZZ)Z

    .line 242
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 5

    .prologue
    .line 439
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 450
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, v4, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    .line 444
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 445
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 446
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 447
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 449
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 454
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;->mAnimatedVectorState:Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;

    iget-object v1, v4, Landroid/graphics/drawable/AnimatedVectorDrawable$AnimatedVectorDrawableState;->mAnimators:Ljava/util/ArrayList;

    .line 455
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 456
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 457
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 458
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 456
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 460
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    return-void
.end method
