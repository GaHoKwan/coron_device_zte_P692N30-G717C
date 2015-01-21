.class public Lcom/mediatek/engineermode/wfdsettings/WfdSecurity;
.super Landroid/app/Activity;
.source "WfdSecurity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "EM/WFD_SECURITY"


# instance fields
.field private mBtDone:Landroid/widget/Button;

.field private mRgDrmContent:Landroid/widget/RadioGroup;

.field private mTvShowsInfo:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdSecurity;->mBtDone:Landroid/widget/Button;

    .line 55
    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdSecurity;->mRgDrmContent:Landroid/widget/RadioGroup;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdSecurity;->mTvShowsInfo:I

    return-void
.end method

.method private onClickBtnDone()V
    .locals 4

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, state:I
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdSecurity;->mRgDrmContent:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0b048d

    if-ne v1, v2, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 103
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_security_option"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    const-string v1, "EM/WFD_SECURITY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last security = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setInitState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdSecurity;->mRgDrmContent:Landroid/widget/RadioGroup;

    const v1, 0x7f0b048d

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdSecurity;->mRgDrmContent:Landroid/widget/RadioGroup;

    const v1, 0x7f0b048e

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 93
    :cond_1
    const-string v0, "EM/WFD_SECURITY"

    const-string v1, "Wrong input security info"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 81
    const-string v0, "EM/WFD_SECURITY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdSecurity;->mBtDone:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/mediatek/engineermode/wfdsettings/WfdSecurity;->onClickBtnDone()V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 86
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f03009a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 68
    const v0, 0x7f0b048c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdSecurity;->mRgDrmContent:Landroid/widget/RadioGroup;

    .line 70
    const v0, 0x7f0b0483

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdSecurity;->mBtDone:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdSecurity;->mBtDone:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_security_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdSecurity;->mTvShowsInfo:I

    .line 75
    iget v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdSecurity;->mTvShowsInfo:I

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/wfdsettings/WfdSecurity;->setInitState(I)V

    .line 77
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 111
    return-void
.end method
