.class Landroid/view/PhoneWindow$DecorView$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/PhoneWindow$DecorView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/PhoneWindow$DecorView;


# direct methods
.method constructor <init>(Landroid/view/PhoneWindow$DecorView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/view/PhoneWindow$DecorView$1;->this$1:Landroid/view/PhoneWindow$DecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$1;->this$1:Landroid/view/PhoneWindow$DecorView;

    # getter for: Landroid/view/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/view/PhoneWindow$DecorView;->access$1500(Landroid/view/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView$1;->this$1:Landroid/view/PhoneWindow$DecorView;

    # getter for: Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v1}, Landroid/view/PhoneWindow$DecorView;->access$1400(Landroid/view/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    return-void
.end method
