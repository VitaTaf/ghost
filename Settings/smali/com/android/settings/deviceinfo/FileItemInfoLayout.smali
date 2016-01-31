.class public Lcom/android/settings/deviceinfo/FileItemInfoLayout;
.super Landroid/widget/RelativeLayout;
.source "FileItemInfoLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final sLengthExternalStorageDirPrefix:I


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mFileNameView:Landroid/widget/TextView;

.field private mFileSizeView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/os/Environment$UserEnvironment;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->sLengthExternalStorageDirPrefix:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0f019f

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mFileNameView:Landroid/widget/TextView;

    const v0, 0x7f0f01a0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mFileSizeView:Landroid/widget/TextView;

    const v0, 0x7f0f019e

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mCheckbox:Landroid/widget/CheckBox;

    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mFileNameView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->sLengthExternalStorageDirPrefix:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFileSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "filesize"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mFileSizeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
