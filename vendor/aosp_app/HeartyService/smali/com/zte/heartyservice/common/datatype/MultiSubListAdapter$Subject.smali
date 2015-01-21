.class public Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
.super Ljava/lang/Object;
.source "MultiSubListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Subject"
.end annotation


# instance fields
.field private commonListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, commonListItems:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->title:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->commonListItems:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->title:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->commonListItems:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public addCommonListItem(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V
    .locals 1
    .parameter "commonListItem"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->commonListItems:Ljava/util/List;

    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/StringUtils;->isObjNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->commonListItems:Ljava/util/List;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->commonListItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public getCommonListItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->commonListItems:Ljava/util/List;

    return-object v0
.end method

.method public getListSize()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->commonListItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public removeCommonListItem(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V
    .locals 1
    .parameter "commonListItem"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->commonListItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public setCommonListItems(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, commonListItems:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->commonListItems:Ljava/util/List;

    .line 53
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->title:Ljava/lang/String;

    .line 45
    return-void
.end method
