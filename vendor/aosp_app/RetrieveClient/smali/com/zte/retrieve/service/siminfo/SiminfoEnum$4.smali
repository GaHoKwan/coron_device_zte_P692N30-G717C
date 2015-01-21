.class enum Lcom/zte/retrieve/service/siminfo/SiminfoEnum$4;
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
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/retrieve/service/siminfo/SiminfoEnum;-><init>(Ljava/lang/String;ILcom/zte/retrieve/service/siminfo/SiminfoEnum;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getSiminfo(Landroid/content/Context;)Lcom/zte/retrieve/service/siminfo/ISiminfoManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    new-instance v0, Lcom/zte/retrieve/service/siminfo/SiminfoManagerOthers;

    invoke-direct {v0}, Lcom/zte/retrieve/service/siminfo/SiminfoManagerOthers;-><init>()V

    return-object v0
.end method
