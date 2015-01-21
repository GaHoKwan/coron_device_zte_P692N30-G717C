.class public Lcom/mediatek/encapsulation/com/mediatek/custom/EncapsulatedCustomProperties;
.super Ljava/lang/Object;
.source "EncapsulatedCustomProperties.java"


# static fields
.field public static final MODULE_MMS:Ljava/lang/String; = "mms"

.field public static final UAPROF_URL:Ljava/lang/String; = "UAProfileURL"

.field public static final USER_AGENT:Ljava/lang/String; = "UserAgent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "module"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 17
    invoke-static {p0, p1, p2}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
