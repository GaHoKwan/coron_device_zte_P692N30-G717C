.class public Lcom/mediatek/engineermode/wfdsettings/WfdQuality;
.super Landroid/app/Activity;
.source "WfdQuality.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "EM/WFC_QUALITY"


# instance fields
.field private mAcsInfo:I

.field private mBtDone:Landroid/widget/Button;

.field private mCbAcsInfo:Landroid/widget/CheckBox;

.field private mCbQeInfo:Landroid/widget/CheckBox;

.field private mCbSqcInfo:Landroid/widget/CheckBox;

.field private mEtNotifTime:Landroid/widget/EditText;

.field private mEtToastTime:Landroid/widget/EditText;

.field private mNotifTime:I

.field private mQeInfo:I

.field private mSqcInfo:I

.field private mToastTime:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mEtToastTime:Landroid/widget/EditText;

    .line 55
    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mEtNotifTime:Landroid/widget/EditText;

    .line 56
    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mBtDone:Landroid/widget/Button;

    .line 57
    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbSqcInfo:Landroid/widget/CheckBox;

    .line 58
    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbQeInfo:Landroid/widget/CheckBox;

    .line 59
    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbAcsInfo:Landroid/widget/CheckBox;

    .line 61
    iput v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mToastTime:I

    .line 62
    iput v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mNotifTime:I

    .line 63
    iput v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mSqcInfo:I

    .line 64
    iput v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mQeInfo:I

    .line 65
    iput v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mAcsInfo:I

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/wfdsettings/WfdQuality;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbSqcInfo:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/wfdsettings/WfdQuality;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mSqcInfo:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/wfdsettings/WfdQuality;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mSqcInfo:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/wfdsettings/WfdQuality;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbQeInfo:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/wfdsettings/WfdQuality;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mQeInfo:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/engineermode/wfdsettings/WfdQuality;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mQeInfo:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/wfdsettings/WfdQuality;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbAcsInfo:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/wfdsettings/WfdQuality;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mAcsInfo:I

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/engineermode/wfdsettings/WfdQuality;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mAcsInfo:I

    return p1
.end method

.method private onClickBtnDone()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mEtToastTime:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mToastTime:I

    .line 141
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mEtNotifTime:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mNotifTime:I

    .line 143
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_display_toast_time"

    iget v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mToastTime:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_notification_time"

    iget v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mNotifTime:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    const-string v0, "EM/WFC_QUALITY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display toast time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mToastTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v0, "EM/WFC_QUALITY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display notification time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mNotifTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v0, "EM/WFC_QUALITY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sqc info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbSqcInfo:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v0, "EM/WFC_QUALITY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quality enhancement : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbQeInfo:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v0, "EM/WFC_QUALITY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto channel selection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbAcsInfo:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 132
    const-string v0, "EM/WFC_QUALITY"

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

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mBtDone:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->onClickBtnDone()V

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 137
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f030099

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 72
    const v0, 0x7f0b0485

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mEtToastTime:Landroid/widget/EditText;

    .line 73
    const v0, 0x7f0b0487

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mEtNotifTime:Landroid/widget/EditText;

    .line 74
    const v0, 0x7f0b0488

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbSqcInfo:Landroid/widget/CheckBox;

    .line 75
    const v0, 0x7f0b0489

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbQeInfo:Landroid/widget/CheckBox;

    .line 76
    const v0, 0x7f0b048a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbAcsInfo:Landroid/widget/CheckBox;

    .line 77
    const v0, 0x7f0b0483

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mBtDone:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mBtDone:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_display_toast_time"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mToastTime:I

    .line 81
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_notification_time"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mNotifTime:I

    .line 82
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_sqc_info_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mSqcInfo:I

    .line 83
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbSqcInfo:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mediatek/engineermode/wfdsettings/WfdQuality$1;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/wfdsettings/WfdQuality$1;-><init>(Lcom/mediatek/engineermode/wfdsettings/WfdQuality;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_qe_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mQeInfo:I

    .line 92
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbQeInfo:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mediatek/engineermode/wfdsettings/WfdQuality$2;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/wfdsettings/WfdQuality$2;-><init>(Lcom/mediatek/engineermode/wfdsettings/WfdQuality;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_auto_channel_selection"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mAcsInfo:I

    .line 100
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbAcsInfo:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mediatek/engineermode/wfdsettings/WfdQuality$3;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/wfdsettings/WfdQuality$3;-><init>(Lcom/mediatek/engineermode/wfdsettings/WfdQuality;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mEtToastTime:Landroid/widget/EditText;

    iget v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mToastTime:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mEtNotifTime:Landroid/widget/EditText;

    iget v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mNotifTime:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mSqcInfo:I

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbSqcInfo:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 117
    :goto_0
    iget v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mQeInfo:I

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbQeInfo:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 123
    :goto_1
    iget v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mAcsInfo:I

    if-nez v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbAcsInfo:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 128
    :goto_2
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbSqcInfo:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbQeInfo:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbAcsInfo:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 156
    return-void
.end method
