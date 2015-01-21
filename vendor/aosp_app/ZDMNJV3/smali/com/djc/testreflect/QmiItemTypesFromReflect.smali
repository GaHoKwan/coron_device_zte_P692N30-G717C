.class public Lcom/djc/testreflect/QmiItemTypesFromReflect;
.super Lcom/djc/testreflect/ObjectFromReflect;
.source "QmiItemTypesFromReflect.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.android.qualcomm.qcnvitems.QmiItemTypes"

.field private static final PROFILE_SETTING_CLASS_NAME:Ljava/lang/String; = "ProfileSetting"


# instance fields
.field private obj:Ljava/lang/Object;

.field private profileSettingClass:Ljava/lang/Class;


# direct methods
.method private constructor <init>()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/djc/testreflect/ObjectFromReflect;-><init>()V

    .line 17
    const-string v1, "com.android.qualcomm.qcnvitems.QmiItemTypes"

    invoke-virtual {p0, v1}, Lcom/djc/testreflect/QmiItemTypesFromReflect;->initClass(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/djc/testreflect/QmiItemTypesFromReflect;->internalClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/djc/testreflect/QmiItemTypesFromReflect;->obj:Ljava/lang/Object;

    .line 19
    iget-object v1, p0, Lcom/djc/testreflect/QmiItemTypesFromReflect;->internalClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 25
    :goto_1
    return-void

    .line 19
    :cond_0
    aget-object v0, v2, v1

    .line 20
    .local v0, c:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ProfileSetting"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 21
    iput-object v0, p0, Lcom/djc/testreflect/QmiItemTypesFromReflect;->profileSettingClass:Ljava/lang/Class;

    goto :goto_1

    .line 19
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/djc/testreflect/QmiItemTypesFromReflect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Lcom/djc/testreflect/QmiItemTypesFromReflect;

    invoke-direct {v0}, Lcom/djc/testreflect/QmiItemTypesFromReflect;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getApnClass()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 28
    iget-object v2, p0, Lcom/djc/testreflect/QmiItemTypesFromReflect;->profileSettingClass:Ljava/lang/Class;

    const-string v3, "getApnClass"

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 29
    .local v1, m:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/djc/testreflect/QmiItemTypesFromReflect;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 31
    .local v0, apnid:S
    return v0
.end method

.method public getApnClass(Ljava/lang/Object;)S
    .locals 5
    .parameter "initedObj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 35
    iget-object v2, p0, Lcom/djc/testreflect/QmiItemTypesFromReflect;->profileSettingClass:Ljava/lang/Class;

    const-string v3, "getApnClass"

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 36
    .local v1, m:Ljava/lang/reflect/Method;
    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 38
    .local v0, apnid:S
    return v0
.end method
