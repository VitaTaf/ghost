.class public Landroid/widget/FrameLayout;
.super Landroid/view/ViewGroup;
.source "FrameLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHILD_GRAVITY:I = 0x800033


# instance fields
.field private mForeground:Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field mForegroundBoundsChanged:Z

.field private mForegroundGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field protected mForegroundInPadding:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field private mForegroundPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundTintList:Landroid/content/res/ColorStateList;

.field private mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mHasForegroundTint:Z

.field private mHasForegroundTintMode:Z

.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mMeasureAllChildren:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private final mOverlayBounds:Landroid/graphics/Rect;

.field private final mSelfBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 67
    iput-boolean v1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 72
    iput-object v0, p0, Landroid/widget/FrameLayout;->mForegroundTintList:Landroid/content/res/ColorStateList;

    .line 73
    iput-object v0, p0, Landroid/widget/FrameLayout;->mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 74
    iput-boolean v1, p0, Landroid/widget/FrameLayout;->mHasForegroundTint:Z

    .line 75
    iput-boolean v1, p0, Landroid/widget/FrameLayout;->mHasForegroundTintMode:Z

    .line 77
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 80
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 83
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 86
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 92
    const/16 v0, 0x77

    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    .line 96
    iput-boolean v2, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    .line 99
    iput-boolean v1, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    iput-boolean v4, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 72
    iput-object v2, p0, Landroid/widget/FrameLayout;->mForegroundTintList:Landroid/content/res/ColorStateList;

    .line 73
    iput-object v2, p0, Landroid/widget/FrameLayout;->mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 74
    iput-boolean v4, p0, Landroid/widget/FrameLayout;->mHasForegroundTint:Z

    .line 75
    iput-boolean v4, p0, Landroid/widget/FrameLayout;->mHasForegroundTintMode:Z

    .line 77
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 80
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 83
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 86
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 89
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/FrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 90
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/FrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 92
    const/16 v2, 0x77

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    .line 96
    iput-boolean v5, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    .line 99
    iput-boolean v4, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 118
    sget-object v2, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 121
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    iget v3, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    .line 124
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 125
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_0
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    .line 133
    :cond_1
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    const/4 v2, -0x1

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iget-object v3, p0, Landroid/widget/FrameLayout;->mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FrameLayout;->mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 136
    iput-boolean v5, p0, Landroid/widget/FrameLayout;->mHasForegroundTintMode:Z

    .line 139
    :cond_2
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FrameLayout;->mForegroundTintList:Landroid/content/res/ColorStateList;

    .line 141
    iput-boolean v5, p0, Landroid/widget/FrameLayout;->mHasForegroundTint:Z

    .line 144
    :cond_3
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    .line 146
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    invoke-direct {p0}, Landroid/widget/FrameLayout;->applyForegroundTint()V

    .line 149
    return-void
.end method

.method private applyForegroundTint()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mHasForegroundTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mHasForegroundTintMode:Z

    if-eqz v0, :cond_3

    .line 383
    :cond_0
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 385
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mHasForegroundTint:Z

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mForegroundTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 389
    :cond_1
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mHasForegroundTintMode:Z

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 395
    :cond_2
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 396
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 399
    :cond_3
    return-void
.end method

.method private getPaddingBottomWithForeground()I
    .locals 2

    .prologue
    .line 417
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getPaddingTopWithForeground()I
    .locals 2

    .prologue
    .line 412
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 703
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 603
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 605
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 606
    iget-object v6, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 608
    .local v6, "foreground":Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    if-eqz v0, :cond_0

    .line 609
    iput-boolean v2, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 610
    iget-object v3, p0, Landroid/widget/FrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 611
    .local v3, "selfBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/widget/FrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 613
    .local v4, "overlayBounds":Landroid/graphics/Rect;
    iget v0, p0, Landroid/widget/FrameLayout;->mRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mLeft:I

    sub-int v8, v0, v1

    .line 614
    .local v8, "w":I
    iget v0, p0, Landroid/widget/FrameLayout;->mBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mTop:I

    sub-int v7, v0, v1

    .line 616
    .local v7, "h":I
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_2

    .line 617
    invoke-virtual {v3, v2, v2, v8, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 622
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v5

    .line 623
    .local v5, "layoutDirection":I
    iget v0, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 626
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 629
    .end local v3    # "selfBounds":Landroid/graphics/Rect;
    .end local v4    # "overlayBounds":Landroid/graphics/Rect;
    .end local v5    # "layoutDirection":I
    .end local v7    # "h":I
    .end local v8    # "w":I
    :cond_0
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 631
    .end local v6    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    .line 619
    .restart local v3    # "selfBounds":Landroid/graphics/Rect;
    .restart local v4    # "overlayBounds":Landroid/graphics/Rect;
    .restart local v6    # "foreground":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "h":I
    .restart local v8    # "w":I
    :cond_2
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    sub-int v2, v8, v2

    iget v9, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    sub-int v9, v7, v9

    invoke-virtual {v3, v0, v1, v2, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 246
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->drawableHotspotChanged(FF)V

    .line 248
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 251
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 239
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 242
    :cond_0
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 638
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    .line 639
    .local v0, "opaque":Z
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, p1}, Landroid/widget/FrameLayout;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    .line 642
    :cond_0
    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 260
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 708
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 690
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getConsiderGoneChildrenWhenMeasuring()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 672
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    move-result v0

    return v0
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getForegroundGravity()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    return v0
.end method

.method public getForegroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForegroundTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getForegroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getMeasureAllChildren()Z
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    return v0
.end method

.method getPaddingLeftWithForeground()I
    .locals 2

    .prologue
    .line 402
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method getPaddingRightWithForeground()I
    .locals 2

    .prologue
    .line 407
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mForegroundInPadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 230
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 231
    :cond_0
    return-void
.end method

.method layoutChildren(IIIIZ)V
    .locals 20
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "forceLeftGravity"    # Z

    .prologue
    .line 524
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v6

    .line 526
    .local v6, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v13

    .line 527
    .local v13, "parentLeft":I
    sub-int v18, p3, p1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v19

    sub-int v14, v18, v19

    .line 529
    .local v14, "parentRight":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v15

    .line 530
    .local v15, "parentTop":I
    sub-int v18, p4, p2

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v19

    sub-int v12, v18, v19

    .line 532
    .local v12, "parentBottom":I
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 534
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_3

    .line 535
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 536
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 537
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 539
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 540
    .local v17, "width":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 545
    .local v8, "height":I
    iget v7, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 546
    .local v7, "gravity":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_0

    .line 547
    const v7, 0x800033

    .line 550
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v10

    .line 551
    .local v10, "layoutDirection":I
    invoke-static {v7, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 552
    .local v2, "absoluteGravity":I
    and-int/lit8 v16, v7, 0x70

    .line 554
    .local v16, "verticalGravity":I
    and-int/lit8 v18, v2, 0x7

    sparse-switch v18, :sswitch_data_0

    .line 566
    :cond_1
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v4, v13, v18

    .line 569
    .local v4, "childLeft":I
    :goto_1
    sparse-switch v16, :sswitch_data_1

    .line 581
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v5, v15, v18

    .line 584
    .local v5, "childTop":I
    :goto_2
    add-int v18, v4, v17

    add-int v19, v5, v8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 534
    .end local v2    # "absoluteGravity":I
    .end local v4    # "childLeft":I
    .end local v5    # "childTop":I
    .end local v7    # "gravity":I
    .end local v8    # "height":I
    .end local v10    # "layoutDirection":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "verticalGravity":I
    .end local v17    # "width":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 556
    .restart local v2    # "absoluteGravity":I
    .restart local v7    # "gravity":I
    .restart local v8    # "height":I
    .restart local v10    # "layoutDirection":I
    .restart local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v16    # "verticalGravity":I
    .restart local v17    # "width":I
    :sswitch_0
    sub-int v18, v14, v13

    sub-int v18, v18, v17

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v13

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    .line 558
    .restart local v4    # "childLeft":I
    goto :goto_1

    .line 560
    .end local v4    # "childLeft":I
    :sswitch_1
    if-nez p5, :cond_1

    .line 561
    sub-int v18, v14, v17

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    .line 562
    .restart local v4    # "childLeft":I
    goto :goto_1

    .line 571
    :sswitch_2
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v5, v15, v18

    .line 572
    .restart local v5    # "childTop":I
    goto :goto_2

    .line 574
    .end local v5    # "childTop":I
    :sswitch_3
    sub-int v18, v12, v15

    sub-int v18, v18, v8

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v15

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 576
    .restart local v5    # "childTop":I
    goto :goto_2

    .line 578
    .end local v5    # "childTop":I
    :sswitch_4
    sub-int v18, v12, v8

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 579
    .restart local v5    # "childTop":I
    goto :goto_2

    .line 587
    .end local v2    # "absoluteGravity":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childLeft":I
    .end local v5    # "childTop":I
    .end local v7    # "gravity":I
    .end local v8    # "height":I
    .end local v10    # "layoutDirection":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "verticalGravity":I
    .end local v17    # "width":I
    :cond_3
    return-void

    .line 554
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 569
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 714
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 715
    const-class v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 716
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 720
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 721
    const-class v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 722
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 519
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->layoutChildren(IIIIZ)V

    .line 520
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 427
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v10

    .line 429
    .local v10, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_4

    :cond_0
    const/16 v16, 0x1

    .line 432
    .local v16, "measureMatchParentChildren":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 434
    const/4 v14, 0x0

    .line 435
    .local v14, "maxHeight":I
    const/4 v15, 0x0

    .line 436
    .local v15, "maxWidth":I
    const/4 v8, 0x0

    .line 438
    .local v8, "childState":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v10, :cond_5

    .line 439
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 440
    .local v2, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_3

    .line 441
    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 442
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 443
    .local v13, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 445
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 447
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v8, v1}, Landroid/widget/FrameLayout;->combineMeasuredStates(II)I

    move-result v8

    .line 448
    if-eqz v16, :cond_3

    .line 449
    iget v1, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget v1, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 451
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 429
    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "childState":I
    .end local v12    # "i":I
    .end local v14    # "maxHeight":I
    .end local v15    # "maxWidth":I
    .end local v16    # "measureMatchParentChildren":Z
    :cond_4
    const/16 v16, 0x0

    goto :goto_0

    .line 458
    .restart local v8    # "childState":I
    .restart local v12    # "i":I
    .restart local v14    # "maxHeight":I
    .restart local v15    # "maxWidth":I
    .restart local v16    # "measureMatchParentChildren":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v15, v1

    .line 459
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v14, v1

    .line 462
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 463
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 466
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 467
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_6

    .line 468
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 469
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 472
    :cond_6
    move/from16 v0, p1

    invoke-static {v15, v0, v8}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v3, v8, 0x10

    move/from16 v0, p2

    invoke-static {v14, v0, v3}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 477
    const/4 v1, 0x1

    if-le v10, v1, :cond_9

    .line 478
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_9

    .line 479
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 481
    .restart local v2    # "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 485
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_7

    .line 486
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 497
    .local v9, "childWidthMeasureSpec":I
    :goto_3
    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_8

    .line 498
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 509
    .local v7, "childHeightMeasureSpec":I
    :goto_4
    invoke-virtual {v2, v9, v7}, Landroid/view/View;->measure(II)V

    .line 478
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 491
    .end local v7    # "childHeightMeasureSpec":I
    .end local v9    # "childWidthMeasureSpec":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v1, v3}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v9

    .restart local v9    # "childWidthMeasureSpec":I
    goto :goto_3

    .line 503
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v1, v3}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v7

    .restart local v7    # "childHeightMeasureSpec":I
    goto :goto_4

    .line 512
    .end local v2    # "child":Landroid/view/View;
    .end local v7    # "childHeightMeasureSpec":I
    .end local v9    # "childWidthMeasureSpec":I
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_9
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 594
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mForegroundBoundsChanged:Z

    .line 596
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 210
    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 211
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 212
    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 213
    .local v1, "visible":Z
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v3

    if-eq v1, v3, :cond_0

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 217
    .end local v1    # "visible":Z
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 212
    goto :goto_0
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 274
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_3

    .line 275
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 277
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    :cond_0
    iput-object p1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 281
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 282
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 283
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 284
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 286
    if-eqz p1, :cond_4

    .line 287
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 288
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 289
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 290
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 293
    :cond_1
    invoke-direct {p0}, Landroid/widget/FrameLayout;->applyForegroundTint()V

    .line 294
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    const/16 v2, 0x77

    if-ne v1, v2, :cond_2

    .line 295
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 296
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 298
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 299
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 300
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 306
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 307
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 309
    :cond_3
    return-void

    .line 304
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method public setForegroundGravity(I)V
    .locals 4
    .param p1, "foregroundGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 175
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    if-eq v1, p1, :cond_3

    .line 176
    const v1, 0x800007

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    .line 177
    const v1, 0x800003

    or-int/2addr p1, v1

    .line 180
    :cond_0
    and-int/lit8 v1, p1, 0x70

    if-nez v1, :cond_1

    .line 181
    or-int/lit8 p1, p1, 0x30

    .line 184
    :cond_1
    iput p1, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    .line 187
    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundGravity:I

    const/16 v2, 0x77

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 189
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 191
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 192
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 193
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 202
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 204
    :cond_3
    return-void

    .line 196
    :cond_4
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 197
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 198
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 199
    iput v3, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    goto :goto_0
.end method

.method public setForegroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 336
    iput-object p1, p0, Landroid/widget/FrameLayout;->mForegroundTintList:Landroid/content/res/ColorStateList;

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mHasForegroundTint:Z

    .line 339
    invoke-direct {p0}, Landroid/widget/FrameLayout;->applyForegroundTint()V

    .line 340
    return-void
.end method

.method public setForegroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 364
    iput-object p1, p0, Landroid/widget/FrameLayout;->mForegroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mHasForegroundTintMode:Z

    .line 367
    invoke-direct {p0}, Landroid/widget/FrameLayout;->applyForegroundTint()V

    .line 368
    return-void
.end method

.method public setMeasureAllChildren(Z)V
    .locals 0
    .param p1, "measureAll"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 656
    iput-boolean p1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 657
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/FrameLayout;->mForeground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
