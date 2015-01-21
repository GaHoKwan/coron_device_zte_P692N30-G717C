.class Lcom/zte/heartyservice/floater/AppUsedData;
.super Ljava/lang/Object;
.source "AppUsedData.java"


# instance fields
.field usedData:J

.field usedPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method constructor <init>(JLandroid/content/pm/PackageInfo;)V
    .locals 0
    .parameter "m"
    .parameter "n"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/zte/heartyservice/floater/AppUsedData;->usedData:J

    .line 34
    iput-object p3, p0, Lcom/zte/heartyservice/floater/AppUsedData;->usedPackageInfo:Landroid/content/pm/PackageInfo;

    .line 35
    return-void
.end method
