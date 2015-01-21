.class public Lcom/mediatek/connectivity/CdsMtuSettingActivity;
.super Landroid/app/Activity;
.source "CdsMtuSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CdsMtuSettingActivity"


# instance fields
.field private mAdapterInterfaceName:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigureBtn:Landroid/widget/Button;

.field private mInterfaceChk:Landroid/widget/CheckBox;

.field private mInterfaceName:Landroid/widget/TextView;

.field private mMobileChk:Landroid/widget/CheckBox;

.field private mMtuSizeValue:Landroid/widget/EditText;

.field private mSpinnerIntefaceName:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/connectivity/CdsMtuSettingActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mInterfaceName:Landroid/widget/TextView;

    return-object v0
.end method

.method private addInterfaceUp(Ljava/net/NetworkInterface;)V
    .locals 7
    .parameter "intf"

    .prologue
    .line 150
    const/4 v3, 0x0

    .line 152
    .local v3, mtu:I
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 153
    .local v1, interfaceUpOnly:Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mInterfaceChk:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 155
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, name:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getMTU()I

    move-result v3

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, item:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 160
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mAdapterInterfaceName:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 169
    .end local v2           #item:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 161
    .restart local v2       #item:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 162
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mAdapterInterfaceName:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v2           #item:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private executeShellCmd(Ljava/lang/String;)V
    .locals 1
    .parameter "cmdStr"

    .prologue
    .line 223
    new-instance v0, Lcom/mediatek/connectivity/CdsMtuSettingActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/connectivity/CdsMtuSettingActivity$2;-><init>(Lcom/mediatek/connectivity/CdsMtuSettingActivity;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 236
    return-void
.end method


# virtual methods
.method public getInterfaceList()Ljava/lang/String;
    .locals 6

    .prologue
    .line 123
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 124
    .local v3, mobileOnly:Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mAdapterInterfaceName:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->clear()V

    .line 126
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mMobileChk:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 129
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 130
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 131
    .local v2, intf:Ljava/net/NetworkInterface;
    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isVirtual()Z

    move-result v5

    if-nez v5, :cond_0

    .line 133
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 135
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "ccmni"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 136
    invoke-direct {p0, v2}, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->addInterfaceUp(Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v0           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2           #intf:Ljava/net/NetworkInterface;
    .end local v4           #name:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 143
    .local v1, ex:Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    .end local v1           #ex:Ljava/net/SocketException;
    :cond_1
    const/4 v5, 0x0

    return-object v5

    .line 137
    .restart local v0       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v2       #intf:Ljava/net/NetworkInterface;
    .restart local v4       #name:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 138
    invoke-direct {p0, v2}, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->addInterfaceUp(Ljava/net/NetworkInterface;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x0

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 174
    .local v0, buttonId:I
    packed-switch v0, :pswitch_data_0

    .line 216
    const-string v8, "CdsMtuSettingActivity"

    const-string v9, "Unknown button ID"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mInterfaceName:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, name:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mMtuSizeValue:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, mtuValueText:Ljava/lang/String;
    const/4 v5, 0x0

    .line 180
    .local v5, ret:Z
    const/4 v2, 0x0

    .line 185
    .local v2, mtuValue:I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 190
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    const/16 v8, 0x5dc

    if-gt v2, v8, :cond_0

    const/16 v8, 0x3e8

    if-ge v2, v8, :cond_1

    .line 191
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid inteface name or MTU size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n MTU size is from 1000 ~ 1500"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, tempString:Ljava/lang/String;
    invoke-static {p0, v6, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 193
    .local v7, toast:Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 186
    .end local v6           #tempString:Ljava/lang/String;
    .end local v7           #toast:Landroid/widget/Toast;
    :catch_0
    move-exception v1

    .line 187
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "CdsMtuSettingActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 197
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 198
    const-string v8, "CdsMtuSettingActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Configure MTU size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {v4, v2}, Landroid/net/NetworkUtils;->setMtuByInterface(Ljava/lang/String;I)Z

    move-result v5

    .line 201
    if-eqz v5, :cond_2

    .line 202
    const-string v6, "Successfully for MTU size configuation"

    .line 206
    .restart local v6       #tempString:Ljava/lang/String;
    :goto_2
    const/4 v8, 0x1

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 207
    .restart local v7       #toast:Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 204
    .end local v6           #tempString:Ljava/lang/String;
    .end local v7           #toast:Landroid/widget/Toast;
    :cond_2
    const-string v6, "Fail to set MTU size"

    .restart local v6       #tempString:Ljava/lang/String;
    goto :goto_2

    .line 212
    .end local v2           #mtuValue:I
    .end local v3           #mtuValueText:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #ret:Z
    .end local v6           #tempString:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->getInterfaceList()Ljava/lang/String;

    .line 213
    iget-object v8, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mSpinnerIntefaceName:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/view/View;->refreshDrawableState()V

    goto/16 :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x7f07001b
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 77
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mInterfaceName:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mMtuSizeValue:Landroid/widget/EditText;

    .line 79
    const v0, 0x7f070019

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mSpinnerIntefaceName:Landroid/widget/Spinner;

    .line 80
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mConfigureBtn:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mConfigureBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mMobileChk:Landroid/widget/CheckBox;

    .line 84
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mMobileChk:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mInterfaceChk:Landroid/widget/CheckBox;

    .line 87
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mInterfaceChk:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mAdapterInterfaceName:Landroid/widget/ArrayAdapter;

    .line 91
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mAdapterInterfaceName:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 92
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mSpinnerIntefaceName:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mAdapterInterfaceName:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 93
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mSpinnerIntefaceName:Landroid/widget/Spinner;

    new-instance v1, Lcom/mediatek/connectivity/CdsMtuSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/mediatek/connectivity/CdsMtuSettingActivity$1;-><init>(Lcom/mediatek/connectivity/CdsMtuSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 111
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->getInterfaceList()Ljava/lang/String;

    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 119
    return-void
.end method
