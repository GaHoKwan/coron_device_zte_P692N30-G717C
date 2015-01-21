.class public Lcom/djc/testreflect/SignalStrengthFromReflect;
.super Lcom/djc/testreflect/ObjectFromReflect;
.source "SignalStrengthFromReflect.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "android.telephony.SignalStrength"


# instance fields
.field private obj:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/djc/testreflect/ObjectFromReflect;-><init>()V

    .line 14
    const-string v0, "android.telephony.SignalStrength"

    invoke-virtual {p0, v0}, Lcom/djc/testreflect/SignalStrengthFromReflect;->initClass(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/djc/testreflect/SignalStrengthFromReflect;->internalClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/djc/testreflect/SignalStrengthFromReflect;->obj:Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/djc/testreflect/SignalStrengthFromReflect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 10
    new-instance v0, Lcom/djc/testreflect/SignalStrengthFromReflect;

    invoke-direct {v0}, Lcom/djc/testreflect/SignalStrengthFromReflect;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getDbm()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 26
    iget-object v2, p0, Lcom/djc/testreflect/SignalStrengthFromReflect;->internalClass:Ljava/lang/Class;

    const-string v3, "getDbm"

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 27
    .local v1, m:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/djc/testreflect/SignalStrengthFromReflect;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 29
    .local v0, dbm:I
    return v0
.end method

.method public getLteDbm()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 19
    iget-object v2, p0, Lcom/djc/testreflect/SignalStrengthFromReflect;->internalClass:Ljava/lang/Class;

    const-string v3, "getLteDbm"

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 20
    .local v1, m:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/djc/testreflect/SignalStrengthFromReflect;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 22
    .local v0, lteDbm:I
    return v0
.end method
