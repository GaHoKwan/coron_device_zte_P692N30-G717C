.class public Lcom/mediatek/mms/ext/MmsSettingsImpl;
.super Landroid/content/ContextWrapper;
.source "MmsSettingsImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsSettings;


# instance fields
.field private mHost:Lcom/mediatek/mms/ext/IMmsSettingsHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ext/MmsSettingsImpl;->mHost:Lcom/mediatek/mms/ext/IMmsSettingsHost;

    .line 12
    return-void
.end method


# virtual methods
.method public getSmsServiceCenter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, ""

    return-object v0
.end method

.method public init(Lcom/mediatek/mms/ext/IMmsSettingsHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/mediatek/mms/ext/MmsSettingsImpl;->mHost:Lcom/mediatek/mms/ext/IMmsSettingsHost;

    .line 16
    return-void
.end method
