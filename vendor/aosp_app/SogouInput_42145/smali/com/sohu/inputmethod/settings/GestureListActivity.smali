.class public Lcom/sohu/inputmethod/settings/GestureListActivity;
.super Landroid/app/ListActivity;
.source "SourceFile"


# static fields
.field private static a:Lcom/sohu/inputmethod/gesture/Gesture;

.field private static a:Lqg;


# instance fields
.field private a:Laea;

.field private a:Laeb;

.field private a:Landroid/widget/TextView;

.field private a:Ljava/io/File;

.field private final a:Ljava/util/Comparator;

.field private a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 62
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->e:Ljava/lang/String;

    const-string v2, "gestures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Ljava/io/File;

    .line 66
    new-instance v0, Ladz;

    invoke-direct {v0, p0}, Ladz;-><init>(Lcom/sohu/inputmethod/settings/GestureListActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Ljava/util/Comparator;

    .line 259
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/GestureListActivity;)Laea;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Laea;

    return-object v0
.end method

.method static a()Lcom/sohu/inputmethod/gesture/Gesture;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/GestureListActivity;)Ljava/util/Comparator;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method static declared-synchronized a()Lqg;
    .locals 2

    .prologue
    .line 101
    const-class v0, Lcom/sohu/inputmethod/settings/GestureListActivity;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Lqg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Laeb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Laeb;

    invoke-virtual {v0}, Laeb;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Laeb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laeb;->cancel(Z)Z

    .line 119
    :cond_0
    new-instance v0, Laeb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Laeb;-><init>(Lcom/sohu/inputmethod/settings/GestureListActivity;Ladz;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Laeb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Laeb;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Laeb;

    .line 120
    return-void
.end method

.method private a(Laec;)V
    .locals 3
    .parameter

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sohu/inputmethod/settings/GestureEditActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 161
    const-string v1, "CATAGORY"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v1, "NAME"

    iget-object v2, p1, Laec;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v1, p1, Laec;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    sput-object v1, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    .line 164
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/settings/GestureListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 165
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/GestureListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->b()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-static {p0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/GestureListActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b()Lqg;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Lqg;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Laea;

    invoke-virtual {v0}, Laea;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Landroid/widget/TextView;

    const-string v1, "gesture is empty"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_0
    return-void
.end method

.method private declared-synchronized b(Laec;)V
    .locals 3
    .parameter

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Lqg;

    iget-object v1, p1, Laec;->a:Ljava/lang/String;

    iget-object v2, p1, Laec;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v0, v1, v2}, Lqg;->b(Ljava/lang/String;Lcom/sohu/inputmethod/gesture/Gesture;)V

    .line 169
    sget-object v0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Lqg;

    invoke-virtual {v0}, Lqg;->a()Z

    .line 171
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Laea;

    .line 172
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laea;->setNotifyOnChange(Z)V

    .line 173
    invoke-virtual {v0, p1}, Laea;->remove(Ljava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Laea;->sort(Ljava/util/Comparator;)V

    .line 175
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->b()V

    .line 176
    invoke-virtual {v0}, Laea;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sohu/inputmethod/settings/GestureEditActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 154
    const-string v1, "CATAGORY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/settings/GestureListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 156
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 111
    const-string v0, "GestureListActivity"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->a()V

    .line 113
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 330
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 331
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laec;

    .line 332
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 340
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 334
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->a(Laec;)V

    goto :goto_0

    .line 337
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->b(Laec;)V

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:[Ljava/lang/String;

    .line 86
    new-instance v0, Laea;

    invoke-direct {v0, p0, p0}, Laea;-><init>(Lcom/sohu/inputmethod/settings/GestureListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Laea;

    .line 87
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Laea;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    sget-object v0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Lqg;

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Ljava/io/File;

    invoke-static {v0}, Lqe;->a(Ljava/io/File;)Lqg;

    move-result-object v0

    sput-object v0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Lqg;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sStore size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Lqg;

    invoke-virtual {v1}, Lqg;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->b(Ljava/lang/String;)V

    .line 94
    :cond_0
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Landroid/widget/TextView;

    .line 95
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->a()V

    .line 97
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 98
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 347
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 349
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 350
    iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 351
    const/4 v0, 0x1

    const v1, 0x7f0b02a9

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/GestureListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 352
    const/4 v0, 0x2

    const v1, 0x7f0b02aa

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/GestureListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 353
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 126
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Laeb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Laeb;

    invoke-virtual {v0}, Laeb;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Laeb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laeb;->cancel(Z)Z

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/GestureListActivity;->a:Laeb;

    .line 131
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 309
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 324
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 311
    :pswitch_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->c()V

    goto :goto_0

    .line 314
    :pswitch_1
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laec;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->a(Laec;)V

    goto :goto_0

    .line 319
    :pswitch_2
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laec;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->b(Laec;)V

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0b02a8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 294
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 295
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 296
    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/settings/GestureListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 297
    const/4 v0, 0x2

    const v1, 0x7f0b02a9

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/GestureListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 298
    const/4 v0, 0x3

    const v1, 0x7f0b02aa

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/GestureListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 302
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 300
    :cond_0
    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/settings/GestureListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 149
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    return-void
.end method
