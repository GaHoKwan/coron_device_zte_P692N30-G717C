.class public Lcom/djc/testreflect/Phone;
.super Lcom/djc/testreflect/ObjectFromReflect;
.source "Phone.java"


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field public STATE_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/djc/testreflect/ObjectFromReflect;-><init>()V

    .line 6
    const-string v1, ""

    iput-object v1, p0, Lcom/djc/testreflect/Phone;->STATE_KEY:Ljava/lang/String;

    .line 7
    const-string v1, "com.android.internal.telephony.Phone"

    iput-object v1, p0, Lcom/djc/testreflect/Phone;->CLASS_NAME:Ljava/lang/String;

    .line 20
    const-string v1, "com.android.internal.telephony.Phone"

    invoke-virtual {p0, v1}, Lcom/djc/testreflect/Phone;->initClass(Ljava/lang/String;)V

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/djc/testreflect/Phone;->internalClass:Ljava/lang/Class;

    const-string v2, "STATE_KEY"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/djc/testreflect/Phone;->STATE_KEY:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    .line 33
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 26
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 27
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 28
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 30
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 31
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/djc/testreflect/Phone;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/djc/testreflect/Phone;

    invoke-direct {v0}, Lcom/djc/testreflect/Phone;-><init>()V

    return-object v0
.end method
