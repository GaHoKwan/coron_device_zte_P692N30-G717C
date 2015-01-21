.class public Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;
.super Ljava/lang/Object;
.source "PackageManagerCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/utils/PackageManagerCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PkgInfo"
.end annotation


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public isSystem:Z

.field public label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 25
    iput-object v0, p0, Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;->label:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/common/utils/PackageManagerCache$PkgInfo;->isSystem:Z

    return-void
.end method
