.class public Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;
.super Lcom/mediatek/phone/ext/PhoneGlobalsExtension;
.source "OP09PhoneGlobalsExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension$1;,
        Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension$PoneGlobalsExtensionReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OP09PhoneGlobalsExtension"


# instance fields
.field private final CDMA_INFO_SPECIFICATION_ACTION:Ljava/lang/String;

.field private final PHONE_PACKAGE:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPluginContext:Landroid/content/Context;

.field private mReceiver:Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension$PoneGlobalsExtensionReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mediatek/phone/ext/PhoneGlobalsExtension;-><init>()V

    .line 57
    const-string v1, "com.mediatek.op09.plugin"

    iput-object v1, p0, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;->PHONE_PACKAGE:Ljava/lang/String;

    .line 58
    const-string v1, "com.mediatek.phone.plugin.CdmaInfoSpecification"

    iput-object v1, p0, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;->CDMA_INFO_SPECIFICATION_ACTION:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;->mPluginContext:Landroid/content/Context;

    .line 65
    new-instance v1, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension$PoneGlobalsExtensionReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension$PoneGlobalsExtensionReceiver;-><init>(Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension$1;)V

    iput-object v1, p0, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;->mReceiver:Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension$PoneGlobalsExtensionReceiver;

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.phone.plugin.CdmaInfoSpecification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;->mPluginContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;->mReceiver:Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension$PoneGlobalsExtensionReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "context"
    .parameter "phone"

    .prologue
    .line 79
    const-string v0, "OP09PhoneGlobalsExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput-object p2, p0, Lcom/mediatek/phone/plugin/OP09PhoneGlobalsExtension;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 81
    return-void
.end method
