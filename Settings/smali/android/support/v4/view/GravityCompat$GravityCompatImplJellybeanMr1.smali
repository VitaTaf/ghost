.class Landroid/support/v4/view/GravityCompat$GravityCompatImplJellybeanMr1;
.super Ljava/lang/Object;
.source "GravityCompat.java"

# interfaces
.implements Landroid/support/v4/view/GravityCompat$GravityCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/GravityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GravityCompatImplJellybeanMr1"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbsoluteGravity(II)I
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "layoutDirection"    # I

    .prologue
    invoke-static {p1, p2}, Landroid/support/v4/view/GravityCompatJellybeanMr1;->getAbsoluteGravity(II)I

    move-result v0

    return v0
.end method
