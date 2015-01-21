.class public Lcom/djc/testreflect/Telephony;
.super Lcom/djc/testreflect/ObjectFromReflect;
.source "Telephony.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "android.provider.Telephony"


# instance fields
.field public final APN:Ljava/lang/String;

.field public final AUTH_TYPE:Ljava/lang/String;

.field public final CONTENT_URI:Landroid/net/Uri;

.field public final CURRENT:Ljava/lang/String;

.field public final DEFAULT_SORT_ORDER:Ljava/lang/String;

.field public final MCC:Ljava/lang/String;

.field public final MMSC:Ljava/lang/String;

.field public final MMSPORT:Ljava/lang/String;

.field public final MMSPROXY:Ljava/lang/String;

.field public final MNC:Ljava/lang/String;

.field public final NAME:Ljava/lang/String;

.field public final NUMERIC:Ljava/lang/String;

.field public final PASSWORD:Ljava/lang/String;

.field public final PORT:Ljava/lang/String;

.field public final PROXY:Ljava/lang/String;

.field public final SERVER:Ljava/lang/String;

.field public final TYPE:Ljava/lang/String;

.field public final USER:Ljava/lang/String;

.field public final _ID:Ljava/lang/String;


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

    .line 63
    invoke-direct {p0}, Lcom/djc/testreflect/ObjectFromReflect;-><init>()V

    .line 64
    const-string v1, "android.provider.Telephony"

    invoke-virtual {p0, v1}, Lcom/djc/testreflect/Telephony;->initClass(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/djc/testreflect/Telephony;->getCarriers()Ljava/lang/Class;

    move-result-object v0

    .line 67
    .local v0, carriersClass:Ljava/lang/Class;
    const-string v1, "CONTENT_URI"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->CONTENT_URI:Landroid/net/Uri;

    .line 68
    const-string v1, "DEFAULT_SORT_ORDER"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    .line 70
    const-string v1, "APN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->APN:Ljava/lang/String;

    .line 71
    const-string v1, "NAME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->NAME:Ljava/lang/String;

    .line 72
    const-string v1, "PROXY"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->PROXY:Ljava/lang/String;

    .line 73
    const-string v1, "PORT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->PORT:Ljava/lang/String;

    .line 75
    const-string v1, "MMSPROXY"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->MMSPROXY:Ljava/lang/String;

    .line 76
    const-string v1, "MMSPORT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->MMSPORT:Ljava/lang/String;

    .line 77
    const-string v1, "SERVER"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->SERVER:Ljava/lang/String;

    .line 78
    const-string v1, "USER"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->USER:Ljava/lang/String;

    .line 80
    const-string v1, "PASSWORD"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->PASSWORD:Ljava/lang/String;

    .line 81
    const-string v1, "MMSC"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->MMSC:Ljava/lang/String;

    .line 82
    const-string v1, "MCC"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->MCC:Ljava/lang/String;

    .line 83
    const-string v1, "MNC"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->MNC:Ljava/lang/String;

    .line 85
    const-string v1, "NUMERIC"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->NUMERIC:Ljava/lang/String;

    .line 86
    const-string v1, "AUTH_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->AUTH_TYPE:Ljava/lang/String;

    .line 87
    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->TYPE:Ljava/lang/String;

    .line 88
    const-string v1, "CURRENT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->CURRENT:Ljava/lang/String;

    .line 90
    const-string v1, "_id"

    iput-object v1, p0, Lcom/djc/testreflect/Telephony;->_ID:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static getInstance()Lcom/djc/testreflect/Telephony;
    .locals 2

    .prologue
    .line 54
    :try_start_0
    new-instance v1, Lcom/djc/testreflect/Telephony;

    invoke-direct {v1}, Lcom/djc/testreflect/Telephony;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 55
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 57
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCarriers()Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v2, p0, Lcom/djc/testreflect/Telephony;->internalClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    .line 95
    .local v1, declaredClasses:[Ljava/lang/Class;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 102
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "class Carriers not found!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_0
    aget-object v0, v1, v2

    .line 97
    .local v0, cClass:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Carriers"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    return-object v0

    .line 95
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
