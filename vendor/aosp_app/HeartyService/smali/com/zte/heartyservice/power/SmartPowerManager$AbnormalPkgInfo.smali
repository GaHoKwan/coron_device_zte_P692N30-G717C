.class public Lcom/zte/heartyservice/power/SmartPowerManager$AbnormalPkgInfo;
.super Ljava/lang/Object;
.source "SmartPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/SmartPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AbnormalPkgInfo"
.end annotation


# instance fields
.field public pkgInfo:Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;

.field public reason:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
