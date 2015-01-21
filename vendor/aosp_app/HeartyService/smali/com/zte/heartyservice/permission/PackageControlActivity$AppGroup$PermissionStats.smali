.class public Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup$PermissionStats;
.super Ljava/lang/Object;
.source "PackageControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PermissionStats"
.end annotation


# instance fields
.field public allowPermNum:I

.field public askPermNum:I

.field public forbidPermNum:I

.field final synthetic this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup$PermissionStats;->this$1:Lcom/zte/heartyservice/permission/PackageControlActivity$AppGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
