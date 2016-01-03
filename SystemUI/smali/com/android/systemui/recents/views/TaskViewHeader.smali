.class public Lcom/android/systemui/recents/views/TaskViewHeader;
.super Landroid/widget/FrameLayout;
.source "TaskViewHeader.java"


# static fields
.field static sHighlightPaint:Landroid/graphics/Paint;


# instance fields
.field mActivityDescription:Landroid/widget/TextView;

.field mApplicationIcon:Landroid/widget/ImageView;

.field mBackground:Landroid/graphics/drawable/RippleDrawable;

.field mBackgroundColor:I

.field mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mCurrentPrimaryColor:I

.field mCurrentPrimaryColorIsDark:Z

.field mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

.field mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field mDimLayerPaint:Landroid/graphics/Paint;

.field mDismissButton:Landroid/widget/ImageView;

.field mDismissContentDescription:Ljava/lang/String;

.field mFocusAnimator:Landroid/animation/AnimatorSet;

.field mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

.field mMoveTaskButton:Landroid/widget/ImageView;

.field private mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    .line 83
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 99
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 100
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 101
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->setWillNotDraw(Z)V

    .line 102
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->setClipToOutline(Z)V

    .line 103
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewHeader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$1;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 111
    const v0, 0x7f020100

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    const v0, 0x7f0200ff

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    const v0, 0x7f0c008d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissContentDescription:Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    .line 119
    sget-object v0, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    sget-object v0, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewHighlightPx:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    sget-object v0, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewHighlightColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    sget-object v0, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 123
    sget-object v0, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method getSecondaryColor(IZ)I
    .locals 2
    .param p1, "primaryColor"    # I
    .param p2, "useLightOverlayColor"    # Z

    .prologue
    .line 182
    if-eqz p2, :cond_0

    const/4 v0, -0x1

    .line 183
    .local v0, "overlayColor":I
    :goto_0
    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0, v1}, Lcom/android/systemui/recents/misc/Utilities;->getColorWithOverlay(IIF)I

    move-result v1

    return v1

    .line 182
    .end local v0    # "overlayColor":I
    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1
    .param p1, "extraSpace"    # I

    .prologue
    .line 307
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewHighlightPx:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v9, v0

    .line 157
    .local v9, "offset":F
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    int-to-float v5, v0

    .line 158
    .local v5, "radius":F
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v8

    .line 159
    .local v8, "count":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 160
    neg-float v1, v9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v3, v0, v9

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v4, v0, v5

    sget-object v7, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 162
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 163
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    const v0, 0x7f0f00cd

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    .line 131
    const v0, 0x7f0f00ce

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0f00cf

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    .line 133
    const v0, 0x7f0f0165

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    .line 137
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    .line 147
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->getId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 150
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    return-void
.end method

.method onTaskViewFocusChanged(ZZ)V
    .locals 13
    .param p1, "focused"    # Z
    .param p2, "animateFocusedState"    # Z

    .prologue
    .line 313
    if-nez p2, :cond_0

    .line 397
    :goto_0
    return-void

    .line 315
    :cond_0
    const/4 v3, 0x0

    .line 316
    .local v3, "isRunning":Z
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_1

    .line 317
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    .line 318
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v9}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 321
    :cond_1
    if-eqz p1, :cond_2

    .line 322
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColor:I

    .line 323
    .local v2, "currentColor":I
    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    iget-boolean v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColorIsDark:Z

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/recents/views/TaskViewHeader;->getSecondaryColor(IZ)I

    move-result v6

    .line 324
    .local v6, "secondaryColor":I
    const/4 v9, 0x3

    new-array v7, v9, [[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [I

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, 0x101009e

    aput v12, v10, v11

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, 0x10100a7

    aput v12, v10, v11

    aput-object v10, v7, v9

    .line 329
    .local v7, "states":[[I
    const/4 v9, 0x3

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    .line 334
    .local v5, "newStates":[I
    const/4 v9, 0x3

    new-array v1, v9, [I

    const/4 v9, 0x0

    aput v2, v1, v9

    const/4 v9, 0x1

    aput v6, v1, v9

    const/4 v9, 0x2

    aput v6, v1, v9

    .line 339
    .local v1, "colors":[I
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    new-instance v10, Landroid/content/res/ColorStateList;

    invoke-direct {v10, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 340
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v9, v5}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 342
    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    iget-boolean v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColorIsDark:Z

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/recents/views/TaskViewHeader;->getSecondaryColor(IZ)I

    move-result v4

    .line 343
    .local v4, "lightPrimaryColor":I
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 345
    .local v0, "backgroundColor":Landroid/animation/ValueAnimator;
    new-instance v9, Lcom/android/systemui/recents/views/TaskViewHeader$2;

    invoke-direct {v9, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$2;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 351
    new-instance v9, Lcom/android/systemui/recents/views/TaskViewHeader$3;

    invoke-direct {v9, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$3;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 359
    const/4 v9, -0x1

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 360
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 362
    const-string v9, "translationZ"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x41700000    # 15.0f

    aput v12, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 363
    .local v8, "translation":Landroid/animation/ObjectAnimator;
    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 364
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 366
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    .line 367
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 368
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x96

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 369
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 370
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 372
    .end local v0    # "backgroundColor":Landroid/animation/ValueAnimator;
    .end local v1    # "colors":[I
    .end local v2    # "currentColor":I
    .end local v4    # "lightPrimaryColor":I
    .end local v5    # "newStates":[I
    .end local v6    # "secondaryColor":I
    .end local v7    # "states":[[I
    .end local v8    # "translation":Landroid/animation/ObjectAnimator;
    :cond_2
    if-eqz v3, :cond_3

    .line 374
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColor:I

    .line 375
    .restart local v2    # "currentColor":I
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 377
    .restart local v0    # "backgroundColor":Landroid/animation/ValueAnimator;
    new-instance v9, Lcom/android/systemui/recents/views/TaskViewHeader$4;

    invoke-direct {v9, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$4;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 386
    const-string v9, "translationZ"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 388
    .restart local v8    # "translation":Landroid/animation/ObjectAnimator;
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    .line 389
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 390
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x96

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 391
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 393
    .end local v0    # "backgroundColor":Landroid/animation/ValueAnimator;
    .end local v2    # "currentColor":I
    .end local v8    # "translation":Landroid/animation/ObjectAnimator;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    const/4 v10, 0x0

    new-array v10, v10, [I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 394
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/views/TaskViewHeader;->setTranslationZ(F)V

    goto/16 :goto_0

    .line 329
    nop

    :array_0
    .array-data 4
        0x0
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public rebindToTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 6
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 191
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->contentDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 203
    .local v0, "existingBgColor":I
    :goto_1
    iget v1, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    if-eq v0, v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 205
    iget v1, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColor:I

    .line 207
    :cond_2
    iget v1, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    .line 208
    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColorIsDark:Z

    .line 209
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewLightTextColor:I

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissContentDescription:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->contentDescription:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v3, :cond_8

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v1, :cond_3

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateResizeTaskBarIcon(Lcom/android/systemui/recents/model/Task;)V

    .line 219
    :cond_3
    return-void

    .line 192
    .end local v0    # "existingBgColor":I
    :cond_4
    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 201
    goto :goto_1

    .line 209
    .restart local v0    # "existingBgColor":I
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDarkTextColor:I

    goto :goto_2

    .line 211
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 215
    :cond_8
    const/4 v2, 0x4

    goto :goto_4
.end method

.method resetNoUserInteractionState()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    return-void
.end method

.method setDimAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 177
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLayerType(ILandroid/graphics/Paint;)V

    .line 178
    return-void
.end method

.method setNoUserInteractionState()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 295
    :cond_0
    return-void
.end method

.method startLaunchTaskDismissAnimation()V
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 271
    :cond_0
    return-void
.end method

.method startNoUserInteractionAnimation()V
    .locals 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 286
    :cond_0
    return-void
.end method

.method unbindFromTask()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    return-void
.end method

.method updateResizeTaskBarIcon(Lcom/android/systemui/recents/model/Task;)V
    .locals 11
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 223
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 224
    .local v1, "display":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v10, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 225
    .local v5, "taskRect":Landroid/graphics/Rect;
    const v3, 0x7f02011f

    .line 226
    .local v3, "resId":I
    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 227
    :cond_0
    const v3, 0x7f020512

    .line 251
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    return-void

    .line 229
    :cond_2
    iget v9, v1, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    if-ne v9, v10, :cond_3

    move v6, v7

    .line 230
    .local v6, "top":Z
    :goto_1
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    if-ne v9, v10, :cond_4

    move v0, v7

    .line 231
    .local v0, "bottom":Z
    :goto_2
    iget v9, v1, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->left:I

    if-ne v9, v10, :cond_5

    move v2, v7

    .line 232
    .local v2, "left":Z
    :goto_3
    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    if-ne v9, v10, :cond_6

    move v4, v7

    .line 233
    .local v4, "right":Z
    :goto_4
    if-eqz v6, :cond_7

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 234
    const v3, 0x7f020513

    goto :goto_0

    .end local v0    # "bottom":Z
    .end local v2    # "left":Z
    .end local v4    # "right":Z
    .end local v6    # "top":Z
    :cond_3
    move v6, v8

    .line 229
    goto :goto_1

    .restart local v6    # "top":Z
    :cond_4
    move v0, v8

    .line 230
    goto :goto_2

    .restart local v0    # "bottom":Z
    :cond_5
    move v2, v8

    .line 231
    goto :goto_3

    .restart local v2    # "left":Z
    :cond_6
    move v4, v8

    .line 232
    goto :goto_4

    .line 235
    .restart local v4    # "right":Z
    :cond_7
    if-eqz v6, :cond_8

    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    .line 236
    const v3, 0x7f020514

    goto :goto_0

    .line 237
    :cond_8
    if-eqz v6, :cond_9

    if-eqz v2, :cond_9

    if-eqz v4, :cond_9

    .line 238
    const v3, 0x7f020515

    goto :goto_0

    .line 239
    :cond_9
    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    if-eqz v4, :cond_a

    .line 240
    const v3, 0x7f020511

    goto :goto_0

    .line 241
    :cond_a
    if-eqz v6, :cond_b

    if-eqz v4, :cond_b

    .line 242
    const v3, 0x7f020519

    goto :goto_0

    .line 243
    :cond_b
    if-eqz v6, :cond_c

    if-eqz v2, :cond_c

    .line 244
    const v3, 0x7f020518

    goto :goto_0

    .line 245
    :cond_c
    if-eqz v0, :cond_d

    if-eqz v4, :cond_d

    .line 246
    const v3, 0x7f020517

    goto :goto_0

    .line 247
    :cond_d
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 248
    const v3, 0x7f020516

    goto :goto_0
.end method
