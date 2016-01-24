.class Landroid/graphics/drawable/StateListDrawable$StateListState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/StateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListState"
.end annotation


# instance fields
.field mStateSets:[[I

.field mThemeAttrs:[I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "orig"    # Landroid/graphics/drawable/StateListDrawable$StateListState;
    .param p2, "owner"    # Landroid/graphics/drawable/StateListDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 315
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    .line 317
    if-eqz p1, :cond_0

    .line 319
    iget-object v0, p1, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    .line 320
    iget-object v0, p1, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    .line 323
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getCapacity()I

    move-result v0

    new-array v0, v0, [[I

    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    goto :goto_0
.end method


# virtual methods
.method addStateSet([ILandroid/graphics/drawable/Drawable;)I
    .locals 2
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 338
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 339
    .local v0, "pos":I
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aput-object p1, v1, v0

    .line 340
    return v0
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->canApplyTheme()Z

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

.method public growArray(II)V
    .locals 3
    .param p1, "oldSize"    # I
    .param p2, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 372
    new-array v0, p2, [[I

    .line 373
    .local v0, "newStateSets":[[I
    iget-object v1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    iput-object v0, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 375
    return-void
.end method

.method indexOfStateSet([I)I
    .locals 4
    .param p1, "stateSet"    # [I

    .prologue
    .line 344
    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 345
    .local v2, "stateSets":[[I
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v0

    .line 346
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 347
    aget-object v3, v2, v1

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 346
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method mutate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 328
    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    :goto_0
    iput-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mThemeAttrs:[I

    .line 330
    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    array-length v2, v2

    new-array v1, v2, [[I

    .line 331
    .local v1, "stateSets":[[I
    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 332
    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object v2, v2, v0

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    :goto_2
    aput-object v2, v1, v0

    .line 331
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "stateSets":[[I
    :cond_0
    move-object v2, v3

    .line 328
    goto :goto_0

    .restart local v0    # "i":I
    .restart local v1    # "stateSets":[[I
    :cond_1
    move-object v2, v3

    .line 332
    goto :goto_2

    .line 334
    :cond_2
    iput-object v1, p0, Landroid/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 335
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 356
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 361
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/StateListDrawable;-><init>(Landroid/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;Landroid/graphics/drawable/StateListDrawable$1;)V

    return-object v0
.end method
