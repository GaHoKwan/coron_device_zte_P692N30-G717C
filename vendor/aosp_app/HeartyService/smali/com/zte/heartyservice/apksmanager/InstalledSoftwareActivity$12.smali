.class Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$12;
.super Ljava/lang/Object;
.source "InstalledSoftwareActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->sortList(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/zte/heartyservice/apksmanager/AbstractListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 797
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$12;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zte/heartyservice/apksmanager/AbstractListItem;Lcom/zte/heartyservice/apksmanager/AbstractListItem;)I
    .locals 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 800
    instance-of v3, p1, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;

    if-eqz v3, :cond_0

    instance-of v3, p2, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 801
    check-cast v0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;

    .local v0, aa:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    move-object v1, p2

    .line 802
    check-cast v1, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;

    .line 803
    .local v1, bb:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    iget-wide v3, v0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->size:J

    iget-wide v5, v1, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->size:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 804
    const/4 v2, -0x1

    .line 811
    .end local v0           #aa:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    .end local v1           #bb:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    :cond_0
    :goto_0
    return v2

    .line 805
    .restart local v0       #aa:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    .restart local v1       #bb:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    :cond_1
    iget-wide v3, v0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->size:J

    iget-wide v5, v1, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->size:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 806
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 797
    check-cast p1, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    .end local p1
    check-cast p2, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$12;->compare(Lcom/zte/heartyservice/apksmanager/AbstractListItem;Lcom/zte/heartyservice/apksmanager/AbstractListItem;)I

    move-result v0

    return v0
.end method
