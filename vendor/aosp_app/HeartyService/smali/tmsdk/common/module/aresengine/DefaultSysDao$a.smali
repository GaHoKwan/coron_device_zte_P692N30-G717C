.class final Ltmsdk/common/module/aresengine/DefaultSysDao$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/aresengine/DefaultSysDao$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/aresengine/DefaultSysDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final yV:Landroid/net/Uri;

.field private final yW:Landroid/net/Uri;

.field final synthetic yX:Ltmsdk/common/module/aresengine/DefaultSysDao;


# direct methods
.method constructor <init>(Ltmsdk/common/module/aresengine/DefaultSysDao;)V
    .locals 1
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Ltmsdk/common/module/aresengine/DefaultSysDao$a;->yX:Ltmsdk/common/module/aresengine/DefaultSysDao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Ltmsdk/common/module/aresengine/DefaultSysDao$a;->yV:Landroid/net/Uri;

    .line 568
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Ltmsdk/common/module/aresengine/DefaultSysDao$a;->yW:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public fu()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 578
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/aresengine/ContactEntity;>;"
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "number"

    aput-object v0, v2, v4

    const-string v0, "display_name"

    aput-object v0, v2, v5

    .line 583
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Ltmsdk/common/module/aresengine/DefaultSysDao$a;->yX:Ltmsdk/common/module/aresengine/DefaultSysDao;

    invoke-static {v0}, Ltmsdk/common/module/aresengine/DefaultSysDao;->a(Ltmsdk/common/module/aresengine/DefaultSysDao;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Ltmsdk/common/module/aresengine/DefaultSysDao$a;->yV:Landroid/net/Uri;

    const-string v5, "name asc"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 585
    .local v7, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Ltmsdk/common/module/aresengine/DefaultSysDao$a;->yX:Ltmsdk/common/module/aresengine/DefaultSysDao;

    invoke-static {v0, v7}, Ltmsdk/common/module/aresengine/DefaultSysDao;->a(Ltmsdk/common/module/aresengine/DefaultSysDao;Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 589
    .local v10, number:Ljava/lang/String;
    invoke-static {v10}, Ltmsdkobf/kg;->cl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    new-instance v6, Ltmsdk/common/module/aresengine/ContactEntity;

    invoke-direct {v6}, Ltmsdk/common/module/aresengine/ContactEntity;-><init>()V

    .line 591
    .local v6, contact:Ltmsdk/common/module/aresengine/ContactEntity;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Ltmsdk/common/module/aresengine/ContactEntity;->id:I

    .line 592
    const-string v0, "[ -]+"

    const-string v1, ""

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Ltmsdk/common/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    .line 593
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Ltmsdk/common/module/aresengine/ContactEntity;->name:Ljava/lang/String;

    .line 595
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    .end local v6           #contact:Ltmsdk/common/module/aresengine/ContactEntity;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 599
    .end local v10           #number:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 600
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 603
    .end local v8           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v0, p0, Ltmsdk/common/module/aresengine/DefaultSysDao$a;->yX:Ltmsdk/common/module/aresengine/DefaultSysDao;

    invoke-static {v0, v7}, Ltmsdk/common/module/aresengine/DefaultSysDao;->b(Ltmsdk/common/module/aresengine/DefaultSysDao;Landroid/database/Cursor;)V

    .line 604
    return-object v9
.end method
