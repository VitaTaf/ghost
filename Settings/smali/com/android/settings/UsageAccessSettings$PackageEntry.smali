.class Lcom/android/settings/UsageAccessSettings$PackageEntry;
.super Ljava/lang/Object;
.source "UsageAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageEntry"
.end annotation


# instance fields
.field appOpMode:I

.field packageInfo:Landroid/content/pm/PackageInfo;

.field final packageName:Ljava/lang/String;

.field permissionGranted:Z

.field preference:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/UsageAccessSettings$PackageEntry;->packageName:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/UsageAccessSettings$PackageEntry;->appOpMode:I

    return-void
.end method
