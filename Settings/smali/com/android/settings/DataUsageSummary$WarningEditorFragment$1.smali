.class Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

.field final synthetic val$bytesPicker:Landroid/widget/NumberPicker;

.field final synthetic val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

.field final synthetic val$target:Lcom/android/settings/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;

.field final synthetic val$unit_in_bytes:J


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$WarningEditorFragment;Landroid/widget/NumberPicker;JLcom/android/settings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$WarningEditorFragment;

    iput-object p2, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    iput-wide p3, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$unit_in_bytes:J

    iput-object p5, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

    iput-object p6, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    iput-object p7, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$target:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->clearFocus()V

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$unit_in_bytes:J

    mul-long v0, v2, v4

    .local v0, "bytes":J
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$editor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$WarningEditorFragment$1;->val$target:Lcom/android/settings/DataUsageSummary;

    const/4 v3, 0x0

    # invokes: Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/android/settings/DataUsageSummary;->access$1100(Lcom/android/settings/DataUsageSummary;Z)V

    return-void
.end method
