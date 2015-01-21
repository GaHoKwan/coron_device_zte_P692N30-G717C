.class final Ltmsdk/bg/module/aresengine/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/bg/module/aresengine/DataInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/bg/module/aresengine/a$e;,
        Ltmsdk/bg/module/aresengine/a$d;,
        Ltmsdk/bg/module/aresengine/a$c;,
        Ltmsdk/bg/module/aresengine/a$b;,
        Ltmsdk/bg/module/aresengine/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltmsdk/bg/module/aresengine/DataInterceptor",
        "<",
        "Ltmsdk/common/module/aresengine/TelephonyEntity;",
        ">;"
    }
.end annotation


# static fields
.field static final uw:Ltmsdk/common/module/aresengine/FilterConfig;

.field static final ux:Ltmsdk/common/module/aresengine/FilterResult;


# instance fields
.field uA:Ltmsdk/bg/module/aresengine/DataHandler;

.field uy:Ltmsdk/bg/module/aresengine/a$a;

.field uz:Ltmsdk/bg/module/aresengine/DataFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltmsdk/bg/module/aresengine/DataFilter",
            "<+",
            "Ltmsdk/common/module/aresengine/TelephonyEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Ltmsdk/common/module/aresengine/FilterConfig;

    invoke-direct {v0}, Ltmsdk/common/module/aresengine/FilterConfig;-><init>()V

    sput-object v0, Ltmsdk/bg/module/aresengine/a;->uw:Ltmsdk/common/module/aresengine/FilterConfig;

    .line 166
    new-instance v0, Ltmsdk/common/module/aresengine/FilterResult;

    invoke-direct {v0}, Ltmsdk/common/module/aresengine/FilterResult;-><init>()V

    sput-object v0, Ltmsdk/bg/module/aresengine/a;->ux:Ltmsdk/common/module/aresengine/FilterResult;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Ltmsdk/bg/module/aresengine/a$a;

    invoke-direct {v0}, Ltmsdk/bg/module/aresengine/a$a;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/aresengine/a;->uy:Ltmsdk/bg/module/aresengine/a$a;

    .line 241
    new-instance v0, Ltmsdk/bg/module/aresengine/DataHandler;

    invoke-direct {v0}, Ltmsdk/bg/module/aresengine/DataHandler;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/aresengine/a;->uA:Ltmsdk/bg/module/aresengine/DataHandler;

    .line 244
    const-string v0, "incoming_call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    new-instance v0, Ltmsdk/bg/module/aresengine/a$b;

    invoke-direct {v0}, Ltmsdk/bg/module/aresengine/a$b;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/aresengine/a;->uz:Ltmsdk/bg/module/aresengine/DataFilter;

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const-string v0, "incoming_sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    new-instance v0, Ltmsdk/bg/module/aresengine/a$c;

    invoke-direct {v0}, Ltmsdk/bg/module/aresengine/a$c;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/aresengine/a;->uz:Ltmsdk/bg/module/aresengine/DataFilter;

    goto :goto_0

    .line 250
    :cond_2
    const-string v0, "outing_sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    new-instance v0, Ltmsdk/bg/module/aresengine/a$d;

    invoke-direct {v0}, Ltmsdk/bg/module/aresengine/a$d;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/aresengine/a;->uz:Ltmsdk/bg/module/aresengine/DataFilter;

    goto :goto_0

    .line 253
    :cond_3
    const-string v0, "system_call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Ltmsdk/bg/module/aresengine/a$e;

    invoke-direct {v0}, Ltmsdk/bg/module/aresengine/a$e;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/aresengine/a;->uz:Ltmsdk/bg/module/aresengine/DataFilter;

    goto :goto_0
.end method


# virtual methods
.method public dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/bg/module/aresengine/DataFilter",
            "<",
            "Ltmsdk/common/module/aresengine/TelephonyEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/a;->uz:Ltmsdk/bg/module/aresengine/DataFilter;

    return-object v0
.end method

.method public dataHandler()Ltmsdk/bg/module/aresengine/DataHandler;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/a;->uA:Ltmsdk/bg/module/aresengine/DataHandler;

    return-object v0
.end method

.method public dataMonitor()Ltmsdk/bg/module/aresengine/DataMonitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/bg/module/aresengine/DataMonitor",
            "<",
            "Ltmsdk/common/module/aresengine/TelephonyEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/a;->uy:Ltmsdk/bg/module/aresengine/a$a;

    return-object v0
.end method
