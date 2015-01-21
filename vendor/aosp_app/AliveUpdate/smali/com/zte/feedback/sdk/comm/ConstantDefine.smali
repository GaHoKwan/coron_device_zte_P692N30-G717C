.class public final Lcom/zte/feedback/sdk/comm/ConstantDefine;
.super Ljava/lang/Object;
.source "ConstantDefine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/feedback/sdk/comm/ConstantDefine$RecordType;
    }
.end annotation


# static fields
.field public static defualtIMEI:Ljava/lang/String;

.field public static defualtUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "http://cloud.ztedevice.com/dcs/"

    sput-object v0, Lcom/zte/feedback/sdk/comm/ConstantDefine;->defualtUrl:Ljava/lang/String;

    .line 30
    const-string v0, "999999999999999"

    sput-object v0, Lcom/zte/feedback/sdk/comm/ConstantDefine;->defualtIMEI:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
