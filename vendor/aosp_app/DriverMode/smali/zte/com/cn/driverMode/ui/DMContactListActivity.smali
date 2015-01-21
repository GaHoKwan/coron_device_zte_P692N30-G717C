.class public Lzte/com/cn/driverMode/ui/DMContactListActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lzte/com/cn/driverMode/ui/e;

.field private c:Landroid/widget/ImageButton;

.field private h:Landroid/widget/ImageButton;

.field private i:Lzte/com/cn/driverMode/service/by;

.field private j:Landroid/view/View$OnClickListener;

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    new-instance v0, Lzte/com/cn/driverMode/ui/v;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/v;-><init>(Lzte/com/cn/driverMode/ui/DMContactListActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->j:Landroid/view/View$OnClickListener;

    new-instance v0, Lzte/com/cn/driverMode/ui/w;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/w;-><init>(Lzte/com/cn/driverMode/ui/DMContactListActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->k:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMContactListActivity;)Lzte/com/cn/driverMode/ui/e;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->b:Lzte/com/cn/driverMode/ui/e;

    return-object v0
.end method

.method static synthetic b(Lzte/com/cn/driverMode/ui/DMContactListActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lzte/com/cn/driverMode/ui/DMContactListActivity;)Lzte/com/cn/driverMode/service/by;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->i:Lzte/com/cn/driverMode/service/by;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMContactListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMContactListActivity;->setContentView(I)V

    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMContactListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->a:Landroid/widget/ListView;

    new-instance v0, Lzte/com/cn/driverMode/ui/e;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->b:Lzte/com/cn/driverMode/ui/e;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->b:Lzte/com/cn/driverMode/ui/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->a:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMContactListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->c:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->c:Landroid/widget/ImageButton;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0017

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMContactListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->h:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->i:Lzte/com/cn/driverMode/service/by;

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMContactListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMContactListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "contact_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->b:Lzte/com/cn/driverMode/ui/e;

    invoke-virtual {v3, v8, v1}, Lzte/com/cn/driverMode/ui/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v6

    :goto_2
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->b:Lzte/com/cn/driverMode/ui/e;

    invoke-virtual {v1}, Lzte/com/cn/driverMode/ui/e;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->b:Lzte/com/cn/driverMode/ui/e;

    invoke-static {v0, v6}, Lzte/com/cn/driverMode/ui/e;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMContactListActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lzte/com/cn/driverMode/ui/u;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/u;-><init>(Lzte/com/cn/driverMode/ui/DMContactListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method
