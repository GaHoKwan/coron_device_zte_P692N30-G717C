.class public Lcom/mediatek/engineermode/usbacm/UsbAcm;
.super Landroid/app/Activity;
.source "UsbAcm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BUTTON_NUM:I = 0x4

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "UsbAcm"


# instance fields
.field private mBtnClose:Landroid/widget/Button;

.field private mBtnList:[Landroid/widget/Button;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/usbacm/UsbAcm;->mBtnList:[Landroid/widget/Button;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/usbacm/UsbAcm;->mBtnClose:Landroid/widget/Button;

    return-void
.end method

.method private closePort()Z
    .locals 5

    .prologue
    .line 137
    const-string v2, "persist.radio.port_index"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "persist.radio.port_index"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, tmp:Ljava/lang/String;
    const-string v2, "UsbAcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getprop persist.radio.port_index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "acm_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 145
    .local v0, ret:Z
    const-string v2, "sys.usb.config"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    const-string v2, "UsbAcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getprop sys.usb.config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return v0
.end method

.method private enableAllButton(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mediatek/engineermode/usbacm/UsbAcm;->mBtnList:[Landroid/widget/Button;

    .local v0, arr$:[Landroid/widget/Button;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 154
    .local v1, btn:Landroid/widget/Button;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v1           #btn:Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method private openPort(I)Z
    .locals 5
    .parameter "index"

    .prologue
    .line 120
    const-string v2, "UsbAcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Port Index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v2, "persist.radio.port_index"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v2, "persist.radio.port_index"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, tmp:Ljava/lang/String;
    const-string v2, "UsbAcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getprop persist.radio.port_index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "acm_enabled"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 129
    .local v0, ret:Z
    const-string v2, "sys.usb.config"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    const-string v2, "UsbAcm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getprop sys.usb.config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return v0
.end method

.method private showToast(I)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mediatek/engineermode/usbacm/UsbAcm;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mediatek/engineermode/usbacm/UsbAcm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 162
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/usbacm/UsbAcm;->mToast:Landroid/widget/Toast;

    .line 163
    iget-object v0, p0, Lcom/mediatek/engineermode/usbacm/UsbAcm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/usbacm/UsbAcm;->mBtnList:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/usbacm/UsbAcm;->mBtnList:[Landroid/widget/Button;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 100
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/usbacm/UsbAcm;->openPort(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const v1, 0x7f080618

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/usbacm/UsbAcm;->showToast(I)V

    .line 102
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/usbacm/UsbAcm;->enableAllButton(Z)V

    .line 98
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const v1, 0x7f080619

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/usbacm/UsbAcm;->showToast(I)V

    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/engineermode/usbacm/UsbAcm;->mBtnClose:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 110
    invoke-direct {p0}, Lcom/mediatek/engineermode/usbacm/UsbAcm;->closePort()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 111
    const v1, 0x7f08061a

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/usbacm/UsbAcm;->showToast(I)V

    .line 112
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/usbacm/UsbAcm;->enableAllButton(Z)V

    .line 117
    :cond_3
    :goto_2
    return-void

    .line 114
    :cond_4
    const v1, 0x7f08061b

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/usbacm/UsbAcm;->showToast(I)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v1, 0x7f030090

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 74
    iget-object v2, p0, Lcom/mediatek/engineermode/usbacm/UsbAcm;->mBtnList:[Landroid/widget/Button;

    const/4 v3, 0x0

    const v1, 0x7f0b0451

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v2, v3

    .line 75
    iget-object v2, p0, Lcom/mediatek/engineermode/usbacm/UsbAcm;->mBtnList:[Landroid/widget/Button;

    const/4 v3, 0x1

    const v1, 0x7f0b0452

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v2, v3

    .line 76
    iget-object v2, p0, Lcom/mediatek/engineermode/usbacm/UsbAcm;->mBtnList:[Landroid/widget/Button;

    const/4 v3, 0x2

    const v1, 0x7f0b0453

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v2, v3

    .line 77
    iget-object v2, p0, Lcom/mediatek/engineermode/usbacm/UsbAcm;->mBtnList:[Landroid/widget/Button;

    const/4 v3, 0x3

    const v1, 0x7f0b0454

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v2, v3

    .line 78
    const v1, 0x7f0b0455

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/usbacm/UsbAcm;->mBtnClose:Landroid/widget/Button;

    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/usbacm/UsbAcm;->mBtnList:[Landroid/widget/Button;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/mediatek/engineermode/usbacm/UsbAcm;->mBtnList:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/usbacm/UsbAcm;->mBtnClose:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 88
    const-string v1, "UsbAcm"

    const-string v2, "-->onResume"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    const-string v1, "persist.radio.port_index"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, tmp:Ljava/lang/String;
    const-string v1, "UsbAcm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop persist.radio.port_index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/usbacm/UsbAcm;->enableAllButton(Z)V

    .line 95
    :cond_0
    return-void
.end method
