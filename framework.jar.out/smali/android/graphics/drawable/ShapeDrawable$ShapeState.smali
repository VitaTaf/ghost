.class final Landroid/graphics/drawable/ShapeDrawable$ShapeState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShapeState"
.end annotation


# instance fields
.field mAlpha:I

.field mChangingConfigurations:I

.field mIntrinsicHeight:I

.field mIntrinsicWidth:I

.field mPadding:Landroid/graphics/Rect;

.field mPaint:Landroid/graphics/Paint;

.field mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

.field mShape:Landroid/graphics/drawable/shapes/Shape;

.field mThemeAttrs:[I

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;)V
    .locals 2
    .param p1, "orig"    # Landroid/graphics/drawable/ShapeDrawable$ShapeState;

    .prologue
    .line 546
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    .line 539
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 543
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    .line 547
    if-eqz p1, :cond_0

    .line 548
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    .line 549
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    .line 550
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShape:Landroid/graphics/drawable/shapes/Shape;

    .line 551
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    .line 552
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 553
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPadding:Landroid/graphics/Rect;

    .line 554
    iget v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicWidth:I

    .line 555
    iget v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mIntrinsicHeight:I

    .line 556
    iget v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    iput v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mAlpha:I

    .line 557
    iget-object v0, p1, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mShaderFactory:Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mPaint:Landroid/graphics/Paint;

    goto :goto_0
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mThemeAttrs:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Landroid/graphics/drawable/ShapeDrawable$ShapeState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 571
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;Landroid/graphics/drawable/ShapeDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 576
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/ShapeDrawable$ShapeState;Landroid/content/res/Resources;Landroid/graphics/drawable/ShapeDrawable$1;)V

    return-object v0
.end method
