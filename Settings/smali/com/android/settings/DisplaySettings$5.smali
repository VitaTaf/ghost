.class Lcom/android/settings/DisplaySettings$5;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplaySettings;->showMotoDisplayDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$5;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$5;->this$0:Lcom/android/settings/DisplaySettings;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/android/settings/DisplaySettings;->updateDozePrefNotify(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->access$100(Lcom/android/settings/DisplaySettings;ZZ)V

    return-void
.end method
