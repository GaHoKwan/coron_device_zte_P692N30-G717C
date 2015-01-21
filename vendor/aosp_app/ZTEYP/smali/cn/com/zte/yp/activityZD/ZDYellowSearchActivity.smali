.class public Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;
.super Landroid/app/ListActivity;
.source "ZDYellowSearchActivity.java"


# instance fields
.field private act:Landroid/app/Activity;

.field private adapter:Lcn/com/zte/yp/SearchListAdapter;

.field private ctx:Landroid/content/Context;

.field private linearLayout:Landroid/widget/LinearLayout;

.field private searchNumber:Landroid/widget/TextView;

.field searchTextwatcher:Landroid/text/TextWatcher;

.field private search_info:Landroid/widget/LinearLayout;

.field private search_text:Landroid/widget/EditText;

.field public settingsItemListener:Landroid/view/View$OnClickListener;

.field private txtSearch_OnTouch:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 76
    new-instance v0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$1;

    invoke-direct {v0, p0}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$1;-><init>(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)V

    iput-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->searchTextwatcher:Landroid/text/TextWatcher;

    .line 142
    new-instance v0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$2;

    invoke-direct {v0, p0}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$2;-><init>(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)V

    iput-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->settingsItemListener:Landroid/view/View$OnClickListener;

    .line 242
    new-instance v0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$3;

    invoke-direct {v0, p0}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$3;-><init>(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)V

    iput-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->txtSearch_OnTouch:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->search_info:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->queryYpContact([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->searchNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->act:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->search_text:Landroid/widget/EditText;

    return-object v0
.end method

.method private bindMenuItemAction(Landroid/content/Context;Landroid/view/MenuItem;Landroid/view/View$OnClickListener;)V
    .locals 6
    .parameter "context"
    .parameter "item"
    .parameter "listener"

    .prologue
    .line 153
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 154
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000b

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 155
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0a0023

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 156
    .local v0, icon:Landroid/widget/ImageView;
    const v4, 0x7f020017

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    const v4, 0x7f0a000c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 158
    .local v2, text:Landroid/widget/TextView;
    const v4, 0x7f08004c

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 159
    invoke-virtual {v3, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-interface {p2, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 161
    const/4 v4, 0x1

    invoke-interface {p2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 162
    return-void
.end method

.method private queryYpContact([Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .parameter "numbers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/com/zte/yp/YpContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual/range {p0 .. p0}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 201
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v14, "[0-9]+"

    .line 202
    .local v14, regx:Ljava/lang/String;
    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 203
    .local v13, pattern:Ljava/util/regex/Pattern;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v13, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 205
    .local v12, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    const-string v3, "number"

    .line 210
    .local v3, selection:Ljava/lang/String;
    :goto_0
    const/4 v10, 0x0

    .line 211
    .local v10, cursor:Landroid/database/Cursor;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v15, ypcsList:Ljava/util/List;,"Ljava/util/List<Lcn/com/zte/yp/YpContact;>;"
    :try_start_0
    sget-object v1, Lcn/com/zte/yp/IYpConst;->URI_YP_CONTACT:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 214
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_3

    .line 215
    :cond_0
    const/4 v15, 0x0

    .line 235
    .end local v15           #ypcsList:Ljava/util/List;,"Ljava/util/List<Lcn/com/zte/yp/YpContact;>;"
    if-eqz v10, :cond_1

    .line 236
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_1
    :goto_1
    return-object v15

    .line 208
    .end local v3           #selection:Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_2
    const-string v3, "name"

    .restart local v3       #selection:Ljava/lang/String;
    goto :goto_0

    .line 218
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v15       #ypcsList:Ljava/util/List;,"Ljava/util/List<Lcn/com/zte/yp/YpContact;>;"
    :cond_3
    :goto_2
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "columnsCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 220
    const-string v1, "number"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, number:Ljava/lang/String;
    const-string v1, "name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, name:Ljava/lang/String;
    const-string v1, "location"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 223
    .local v9, location:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 224
    const-string v1, "datasource"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 225
    .local v8, datasource:Ljava/lang/String;
    const-string v1, "photo"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 226
    .local v7, photo:[B
    new-instance v4, Lcn/com/zte/yp/YpContact;

    invoke-direct/range {v4 .. v9}, Lcn/com/zte/yp/YpContact;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    .line 227
    .local v4, ypcs:Lcn/com/zte/yp/YpContact;
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 231
    .end local v4           #ypcs:Lcn/com/zte/yp/YpContact;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #photo:[B
    .end local v8           #datasource:Ljava/lang/String;
    .end local v9           #location:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 232
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    if-eqz v10, :cond_1

    .line 236
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 235
    .end local v11           #e:Ljava/lang/Exception;
    :cond_4
    if-eqz v10, :cond_1

    .line 236
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 235
    :catchall_0
    move-exception v1

    if-eqz v10, :cond_5

    .line 236
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method private setSearchText()V
    .locals 4

    .prologue
    .line 69
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->search_text:Landroid/widget/EditText;

    .line 70
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->search_text:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->searchTextwatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->search_text:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->txtSearch_OnTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->search_text:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 73
    new-instance v0, Lcn/com/zte/yp/activityZD/KeyboardUtil;

    iget-object v1, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->act:Landroid/app/Activity;

    iget-object v2, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->search_text:Landroid/widget/EditText;

    invoke-direct {v0, v1, v2, v3}, Lcn/com/zte/yp/activityZD/KeyboardUtil;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/EditText;)V

    invoke-virtual {v0}, Lcn/com/zte/yp/activityZD/KeyboardUtil;->showKeyboard()V

    .line 74
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->act:Landroid/app/Activity;

    const v2, 0x7f0a0034

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    .line 185
    .local v0, keyboardView:Landroid/inputmethodservice/KeyboardView;
    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 186
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->setContentView(I)V

    .line 58
    iput-object p0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->ctx:Landroid/content/Context;

    .line 59
    iput-object p0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->act:Landroid/app/Activity;

    .line 60
    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->linearLayout:Landroid/widget/LinearLayout;

    .line 61
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->linearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    const v0, 0x7f0a0032

    invoke-virtual {p0, v0}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->searchNumber:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->search_info:Landroid/widget/LinearLayout;

    .line 65
    invoke-direct {p0}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->setSearchText()V

    .line 66
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 130
    invoke-virtual {p0}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 131
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 132
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 166
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 179
    :goto_0
    return v2

    .line 168
    :sswitch_0
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    goto :goto_0

    .line 172
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v0}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 166
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0a0038 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 126
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 137
    const v1, 0x7f0a0038

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 138
    .local v0, item:Landroid/view/MenuItem;
    iget-object v1, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->settingsItemListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p0, v0, v1}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->bindMenuItemAction(Landroid/content/Context;Landroid/view/MenuItem;Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public updateLayout(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/zte/yp/YpContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, obj:Ljava/util/List;,"Ljava/util/List<Lcn/com/zte/yp/YpContact;>;"
    const/4 v2, 0x0

    .line 112
    if-nez p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->search_info:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 118
    new-instance v0, Lcn/com/zte/yp/SearchListAdapter;

    invoke-direct {v0, p0, p1}, Lcn/com/zte/yp/SearchListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->adapter:Lcn/com/zte/yp/SearchListAdapter;

    .line 119
    iget-object v0, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->adapter:Lcn/com/zte/yp/SearchListAdapter;

    invoke-virtual {p0, v0}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
