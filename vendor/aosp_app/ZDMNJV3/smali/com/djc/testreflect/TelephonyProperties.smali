.class public Lcom/djc/testreflect/TelephonyProperties;
.super Lcom/djc/testreflect/ObjectFromReflect;
.source "TelephonyProperties.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.android.internal.telephony.TelephonyProperties"


# instance fields
.field public final PROPERTY_ICC_OPERATOR_NUMERIC:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/djc/testreflect/ObjectFromReflect;-><init>()V

    .line 26
    const-string v0, "com.android.internal.telephony.TelephonyProperties"

    invoke-virtual {p0, v0}, Lcom/djc/testreflect/TelephonyProperties;->initClass(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/djc/testreflect/TelephonyProperties;->internalClass:Ljava/lang/Class;

    const-string v1, "PROPERTY_ICC_OPERATOR_NUMERIC"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/djc/testreflect/TelephonyProperties;->PROPERTY_ICC_OPERATOR_NUMERIC:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/djc/testreflect/TelephonyProperties;
    .locals 2

    .prologue
    .line 13
    :try_start_0
    new-instance v1, Lcom/djc/testreflect/TelephonyProperties;

    invoke-direct {v1}, Lcom/djc/testreflect/TelephonyProperties;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 14
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 16
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    const/4 v1, 0x0

    goto :goto_0
.end method
