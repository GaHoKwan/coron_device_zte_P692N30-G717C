.class public Lcom/djc/testreflect/PhoneFromReflect;
.super Lcom/djc/testreflect/ObjectFromReflect;
.source "PhoneFromReflect.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.android.internal.telephony.Phone"


# instance fields
.field public final APN_ALREADY_ACTIVE:I

.field public final APN_REQUEST_FAILED:I

.field public final APN_REQUEST_STARTED:I

.field public final FEATURE_ENABLE_MMS:Ljava/lang/String;

.field public final FEATURE_ENABLE_VZWADMIN:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0}, Lcom/djc/testreflect/ObjectFromReflect;-><init>()V

    .line 17
    const-string v0, "com.android.internal.telephony.Phone"

    invoke-virtual {p0, v0}, Lcom/djc/testreflect/PhoneFromReflect;->initClass(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/djc/testreflect/PhoneFromReflect;->internalClass:Ljava/lang/Class;

    const-string v1, "FEATURE_ENABLE_MMS"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/djc/testreflect/PhoneFromReflect;->FEATURE_ENABLE_MMS:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/djc/testreflect/PhoneFromReflect;->internalClass:Ljava/lang/Class;

    const-string v1, "FEATURE_ENABLE_VZWADMIN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/djc/testreflect/PhoneFromReflect;->FEATURE_ENABLE_VZWADMIN:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/djc/testreflect/PhoneFromReflect;->internalClass:Ljava/lang/Class;

    const-string v1, "APN_REQUEST_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/djc/testreflect/PhoneFromReflect;->APN_REQUEST_STARTED:I

    .line 21
    iget-object v0, p0, Lcom/djc/testreflect/PhoneFromReflect;->internalClass:Ljava/lang/Class;

    const-string v1, "APN_ALREADY_ACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/djc/testreflect/PhoneFromReflect;->APN_ALREADY_ACTIVE:I

    .line 22
    iget-object v0, p0, Lcom/djc/testreflect/PhoneFromReflect;->internalClass:Ljava/lang/Class;

    const-string v1, "APN_REQUEST_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/djc/testreflect/PhoneFromReflect;->APN_REQUEST_FAILED:I

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/djc/testreflect/PhoneFromReflect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Lcom/djc/testreflect/PhoneFromReflect;

    invoke-direct {v0}, Lcom/djc/testreflect/PhoneFromReflect;-><init>()V

    return-object v0
.end method
