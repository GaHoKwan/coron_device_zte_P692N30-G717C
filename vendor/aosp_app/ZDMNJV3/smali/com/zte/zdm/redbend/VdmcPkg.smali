.class public Lcom/zte/zdm/redbend/VdmcPkg;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vdmcpkg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native splitPkg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method
