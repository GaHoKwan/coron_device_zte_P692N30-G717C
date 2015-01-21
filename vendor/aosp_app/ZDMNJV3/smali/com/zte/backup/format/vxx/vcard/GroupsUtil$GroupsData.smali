.class public Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;
.super Ljava/lang/Object;
.source "GroupsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/backup/format/vxx/vcard/GroupsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupsData"
.end annotation


# static fields
.field private static final GROUP_ID:Ljava/lang/String; = "id"

.field private static final GROUP_MEMBER_COUNT:Ljava/lang/String; = "member_count"

.field private static final GROUP_TITLE:Ljava/lang/String; = "name"


# instance fields
.field data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zte/backup/format/vxx/vcard/GroupsUtil;


# direct methods
.method public constructor <init>(Lcom/zte/backup/format/vxx/vcard/GroupsUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "name"
    .parameter "id"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;->this$0:Lcom/zte/backup/format/vxx/vcard/GroupsUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;->data:Ljava/util/Map;

    .line 44
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;->data:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;->data:Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;->data:Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;->data:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initGroupMemberCount()I
    .locals 4

    .prologue
    .line 57
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;->this$0:Lcom/zte/backup/format/vxx/vcard/GroupsUtil;

    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;->data:Ljava/util/Map;

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->getGroupMemberCount(Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->access$0(Lcom/zte/backup/format/vxx/vcard/GroupsUtil;Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, count:I
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;->data:Ljava/util/Map;

    const-string v2, "member_count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return v0
.end method
