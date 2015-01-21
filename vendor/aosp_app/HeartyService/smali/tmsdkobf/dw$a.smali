.class final Ltmsdkobf/dw$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# direct methods
.method private constructor <init>(Ltmsdkobf/dw;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 214
    return-void
.end method

.method synthetic constructor <init>(Ltmsdkobf/dw;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-direct {p0, p1}, Ltmsdkobf/dw$a;-><init>(Ltmsdkobf/dw;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 220
    :try_start_0
    invoke-static {}, Ltmsdkobf/dt;->T()Ltmsdkobf/dt;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/dt;->Q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
