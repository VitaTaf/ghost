.class public Lcom/android/systemui/volume/ZenFooter;
.super Landroid/widget/LinearLayout;
.source "ZenFooter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mContext:Landroid/content/Context;

.field private mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mEndNowButton:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private final mSpTexts:Lcom/android/systemui/volume/SpTexts;

.field private mSummaryLine1:Landroid/widget/TextView;

.field private mSummaryLine2:Landroid/widget/TextView;

.field private mZen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/systemui/volume/ZenFooter;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/ZenFooter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    .line 52
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/android/systemui/volume/SpTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/SpTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    .line 54
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/ZenFooter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenFooter;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenFooter;->setZen(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/ZenFooter;Landroid/service/notification/ZenModeConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenFooter;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenFooter;->setConfig(Landroid/service/notification/ZenModeConfig;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/systemui/volume/ZenFooter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isZenAlarms()Z
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZenNone()Z
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZenPriority()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 109
    iget v1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setConfig(Landroid/service/notification/ZenModeConfig;)V
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    goto :goto_0
.end method

.method private setZen(I)V
    .locals 1
    .param p1, "zen"    # I

    .prologue
    .line 93
    iget v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    if-ne v0, p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iput p1, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    goto :goto_0
.end method


# virtual methods
.method public init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    .line 70
    new-instance v0, Lcom/android/systemui/volume/ZenFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ZenFooter$1;-><init>(Lcom/android/systemui/volume/ZenFooter;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mEndNowButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/volume/ZenFooter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/volume/ZenFooter$2;-><init>(Lcom/android/systemui/volume/ZenFooter;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenFooter;->mZen:I

    .line 87
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 88
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 90
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SpTexts;->update()V

    .line 140
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 60
    const v0, 0x7f0f0132

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mIcon:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f0f0133

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0f0134

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine2:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0f0135

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/ZenFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mEndNowButton:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 65
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 66
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter;->mSpTexts:Lcom/android/systemui/volume/SpTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter;->mEndNowButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I

    .line 67
    return-void
.end method

.method public update()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 121
    iget-object v5, p0, Lcom/android/systemui/volume/ZenFooter;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenNone()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f020021

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenPriority()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v5, 0x7f0c011d

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "line1":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine1:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 129
    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v3, :cond_4

    move v0, v4

    .line 131
    .local v0, "isForever":Z
    :goto_2
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v4, 0x1040742

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "line2":Ljava/lang/String;
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mSummaryLine2:Landroid/widget/TextView;

    invoke-static {v3, v2}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 136
    return-void

    .line 121
    .end local v0    # "isForever":Z
    .end local v1    # "line1":Ljava/lang/String;
    .end local v2    # "line2":Ljava/lang/String;
    :cond_0
    const v3, 0x7f02051e

    goto :goto_0

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenAlarms()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v5, 0x7f0c028c

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenFooter;->isZenNone()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    const v5, 0x7f0c011c

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 129
    .restart local v1    # "line1":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 131
    .restart local v0    # "isForever":Z
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/volume/ZenFooter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/volume/ZenFooter;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v6, p0, Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getCurrentUser()I

    move-result v6

    invoke-static {v3, v5, v6, v4}, Landroid/service/notification/ZenModeConfig;->getConditionSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method
