.class Landroid/support/v4/view/ViewConfigurationCompatFroyo;
.super Ljava/lang/Object;
.source "ViewConfigurationCompatFroyo.java"


# direct methods
.method public static getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .locals 1
    .param p0, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    return v0
.end method
