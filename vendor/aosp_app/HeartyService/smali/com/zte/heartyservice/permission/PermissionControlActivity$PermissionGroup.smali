.class Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;
.super Ljava/lang/Object;
.source "PermissionControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/permission/PermissionControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup$GroupAppStats;
    }
.end annotation


# instance fields
.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public permissionCategory:I

.field final synthetic this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/permission/PermissionControlActivity;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "permissionCategory"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p3, children:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;->this$0:Lcom/zte/heartyservice/permission/PermissionControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p2, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;->permissionCategory:I

    .line 136
    iput-object p3, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;->children:Ljava/util/List;

    .line 137
    return-void
.end method


# virtual methods
.method public getGroupAppStats()Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup$GroupAppStats;
    .locals 8

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, allowAppNum:I
    const/4 v3, 0x0

    .line 141
    .local v3, forbidAppNum:I
    const/4 v2, 0x0

    .line 142
    .local v2, askAppNum:I
    iget-object v6, p0, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;

    .line 143
    .local v0, ai:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->getPermissonType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 144
    add-int/lit8 v3, v3, 0x1

    .line 145
    :cond_1
    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->getPermissonType()I

    move-result v6

    if-nez v6, :cond_2

    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 147
    :cond_2
    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;->getPermissonType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v0           #ai:Lcom/zte/heartyservice/permission/PermissionControlActivity$AppItem;
    :cond_3
    new-instance v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup$GroupAppStats;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup$GroupAppStats;-><init>(Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup;)V

    .line 152
    .local v5, mStats:Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup$GroupAppStats;
    iput v1, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup$GroupAppStats;->allowAppNum:I

    .line 153
    iput v3, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup$GroupAppStats;->forbidAppNum:I

    .line 154
    iput v2, v5, Lcom/zte/heartyservice/permission/PermissionControlActivity$PermissionGroup$GroupAppStats;->askAppNum:I

    .line 155
    return-object v5
.end method
