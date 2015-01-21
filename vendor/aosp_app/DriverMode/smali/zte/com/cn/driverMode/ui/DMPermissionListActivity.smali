.class public Lzte/com/cn/driverMode/ui/DMPermissionListActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Landroid/widget/ListView;

.field private c:Lzte/com/cn/driverMode/ui/ei;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/ImageButton;

.field private j:Lzte/com/cn/driverMode/service/by;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    new-instance v0, Lzte/com/cn/driverMode/ui/ci;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/ci;-><init>(Lzte/com/cn/driverMode/ui/DMPermissionListActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->k:Landroid/view/View$OnClickListener;

    new-instance v0, Lzte/com/cn/driverMode/ui/cj;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/cj;-><init>(Lzte/com/cn/driverMode/ui/DMPermissionListActivity;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->l:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lzte/com/cn/driverMode/ui/DMPermissionListActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lzte/com/cn/driverMode/ui/DMPermissionListActivity;)Lzte/com/cn/driverMode/ui/ei;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->c:Lzte/com/cn/driverMode/ui/ei;

    return-object v0
.end method

.method static synthetic c(Lzte/com/cn/driverMode/ui/DMPermissionListActivity;)Lzte/com/cn/driverMode/service/by;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->j:Lzte/com/cn/driverMode/service/by;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->a:Landroid/content/Context;

    const v0, 0x7f0b00a0

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->b:Landroid/widget/ListView;

    new-instance v0, Lzte/com/cn/driverMode/ui/ei;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/ui/ei;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->c:Lzte/com/cn/driverMode/ui/ei;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->c:Lzte/com/cn/driverMode/ui/ei;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0b009f

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->h:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->i:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->i:Landroid/widget/ImageButton;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    invoke-direct {v0, p0}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->j:Lzte/com/cn/driverMode/service/by;

    return-void
.end method

.method protected onResume()V
    .locals 7

    const/4 v2, 0x0

    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onResume()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->c:Lzte/com/cn/driverMode/ui/ei;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/ei;->a()V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->getContentResolver()Landroid/content/ContentResolver;

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

    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->j:Lzte/com/cn/driverMode/service/by;

    invoke-virtual {v4, v1, v3}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->c:Lzte/com/cn/driverMode/ui/ei;

    invoke-virtual {v4, v3, v1}, Lzte/com/cn/driverMode/ui/ei;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->c:Lzte/com/cn/driverMode/ui/ei;

    invoke-virtual {v1}, Lzte/com/cn/driverMode/ui/ei;->notifyDataSetChanged()V

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->c:Lzte/com/cn/driverMode/ui/ei;

    new-instance v1, Lzte/com/cn/driverMode/ui/ck;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/ck;-><init>(Lzte/com/cn/driverMode/ui/DMPermissionListActivity;)V

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/ei;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
