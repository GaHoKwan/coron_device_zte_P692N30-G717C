.class Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension$PoneGlobalsExtensionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OP09PhoneGlobalsExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PoneGlobalsExtensionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;


# direct methods
.method private constructor <init>(Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension$PoneGlobalsExtensionReceiver;->this$0:Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension$PoneGlobalsExtensionReceiver;-><init>(Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, -0x1

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, action:Ljava/lang/String;
    const-string v8, "OP09PhoneGlobalsExtension"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PoneGlobalsExtensionReceiver, onReceive action = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mPhone "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension$PoneGlobalsExtensionReceiver;->this$0:Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;

    #getter for: Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v10}, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;->access$100(Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v8, "com.mediatek.phone.plugin.CdmaInfoSpecification"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 90
    const/4 v4, 0x1

    .line 91
    .local v4, isCdma:Z
    const/4 v5, 0x0

    .line 92
    .local v5, meidValid:Z
    const-string v8, "simId"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 93
    .local v7, slot:I
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v3, intentCdma:Landroid/content/Intent;
    const-string v8, "com.mediatek.op09.plugin"

    const-string v9, "com.mediatek.phone.plugin.CdmaInfoSpecification"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const/high16 v8, 0x1000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    if-ne v11, v7, :cond_1

    .line 98
    const-string v8, "OP09PhoneGlobalsExtension"

    const-string v9, "slotId = -1, just return"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v4, 0x0

    .line 100
    const-string v8, "cdma"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 152
    .end local v3           #intentCdma:Landroid/content/Intent;
    .end local v4           #isCdma:Z
    .end local v5           #meidValid:Z
    .end local v7           #slot:I
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local v3       #intentCdma:Landroid/content/Intent;
    .restart local v4       #isCdma:Z
    .restart local v5       #meidValid:Z
    .restart local v7       #slot:I
    :cond_1
    iget-object v8, p0, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension$PoneGlobalsExtensionReceiver;->this$0:Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;

    #getter for: Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;->access$100(Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    instance-of v8, v8, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v8, :cond_2

    .line 106
    iget-object v8, p0, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension$PoneGlobalsExtensionReceiver;->this$0:Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;

    #getter for: Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;->access$100(Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 110
    .local v6, phoneCdma:Lcom/android/internal/telephony/Phone;
    :goto_1
    const/4 v8, 0x2

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    if-eq v8, v9, :cond_3

    .line 111
    const-string v8, "OP09PhoneGlobalsExtension"

    const-string v9, "phone type is not CDMA, just return"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v4, 0x0

    .line 113
    const-string v8, "cdma"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 108
    .end local v6           #phoneCdma:Lcom/android/internal/telephony/Phone;
    :cond_2
    iget-object v8, p0, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension$PoneGlobalsExtensionReceiver;->this$0:Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;

    #getter for: Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;->access$100(Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .restart local v6       #phoneCdma:Lcom/android/internal/telephony/Phone;
    goto :goto_1

    .line 117
    :cond_3
    instance-of v8, v6, Lcom/android/internal/telephony/PhoneProxy;

    if-nez v8, :cond_4

    .line 118
    const-string v8, "OP09PhoneGlobalsExtension"

    const-string v9, "phone is not instance of PhoneProxy"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v4, 0x0

    .line 120
    const-string v8, "cdma"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    move-object v2, v6

    .line 124
    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    .line 125
    .local v2, cdmaPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    instance-of v8, v8, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-nez v8, :cond_5

    .line 126
    const-string v8, "OP09PhoneGlobalsExtension"

    const-string v9, "active phone intance type is not CDMAPhone, just return"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v4, 0x0

    .line 128
    const-string v8, "cdma"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 133
    :cond_5
    if-eqz v4, :cond_6

    .line 134
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 135
    .local v1, cdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isMeidValid()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 136
    const/4 v5, 0x1

    .line 137
    const-string v8, "meid"

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getMeid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    :goto_2
    const-string v8, "simId"

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string v8, "prl_version"

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v8, "sid"

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v8, "nid"

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getNid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v8, "uim_id"

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getUimid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v8, "is_meid"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    .end local v1           #cdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    :cond_6
    const-string v8, "cdma"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 139
    .restart local v1       #cdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    :cond_7
    const-string v8, "esn"

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getEsn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method
