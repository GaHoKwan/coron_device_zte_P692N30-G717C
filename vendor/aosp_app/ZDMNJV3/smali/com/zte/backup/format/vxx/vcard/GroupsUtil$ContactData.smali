.class public Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;
.super Ljava/lang/Object;
.source "GroupsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/backup/format/vxx/vcard/GroupsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactData"
.end annotation


# instance fields
.field groupsName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "_id"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;->groupsName:Ljava/util/List;

    .line 68
    iput-object p1, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;->id:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public addGroup(Ljava/lang/String;)V
    .locals 1
    .parameter "groupName"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;->groupsName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;->groupsName:Ljava/util/List;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;->id:Ljava/lang/String;

    return-object v0
.end method
