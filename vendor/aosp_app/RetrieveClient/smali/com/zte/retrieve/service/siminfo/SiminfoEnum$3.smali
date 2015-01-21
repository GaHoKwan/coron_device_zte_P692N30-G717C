.class enum Lcom/zte/retrieve/service/siminfo/SiminfoEnum$3;
.super Lcom/zte/retrieve/service/siminfo/SiminfoEnum;
.source "SiminfoEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/siminfo/SiminfoEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/retrieve/service/siminfo/SiminfoEnum;-><init>(Ljava/lang/String;ILcom/zte/retrieve/service/siminfo/SiminfoEnum;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getSiminfo(Landroid/content/Context;)Lcom/zte/retrieve/service/siminfo/ISiminfoManager;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;

    invoke-direct {v0, p1}, Lcom/zte/retrieve/service/siminfo/SiminfoManagerMarvell;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
