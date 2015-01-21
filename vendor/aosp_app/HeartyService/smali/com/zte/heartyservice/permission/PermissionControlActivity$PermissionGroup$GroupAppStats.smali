.class public Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup$GroupAppStats;
.super Ljava/lang/Object;
.source "PermissionControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupAppStats"
.end annotation


# instance fields
.field public allowAppNum:I

.field public askAppNum:I

.field public forbidAppNum:I

.field final synthetic this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup$GroupAppStats;->this$1:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
