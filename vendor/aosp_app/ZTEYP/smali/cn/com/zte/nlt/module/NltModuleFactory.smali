.class public Lcn/com/zte/nlt/module/NltModuleFactory;
.super Ljava/lang/Object;
.source "NltModuleFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNrtInstance(Landroid/content/Context;)Lcn/com/zte/nlt/module/NltModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    new-instance v0, Lcn/com/zte/nlt/module/zte/ZteNltModule;

    invoke-direct {v0, p0}, Lcn/com/zte/nlt/module/zte/ZteNltModule;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
