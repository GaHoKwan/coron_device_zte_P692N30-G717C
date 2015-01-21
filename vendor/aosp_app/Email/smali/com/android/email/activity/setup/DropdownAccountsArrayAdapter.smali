.class public Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "DropdownAccountsArrayAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDropDownResource:I

.field private mFieldId:I

.field private mFilter:Landroid/widget/Filter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLock:Ljava/lang/Object;

.field private mNotifyOnChange:Z

.field private mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mResource:I

.field mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mLock:Ljava/lang/Object;

    .line 59
    iput v1, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mFieldId:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mNotifyOnChange:Z

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"

    .prologue
    .line 96
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mLock:Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mFieldId:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mNotifyOnChange:Z

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mLock:Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mFieldId:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mNotifyOnChange:Z

    .line 147
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[TT;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    .local p4, objects:[Ljava/lang/Object;,"[TT;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mLock:Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mFieldId:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mNotifyOnChange:Z

    .line 122
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mLock:Ljava/lang/Object;

    .line 59
    iput v1, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mFieldId:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mNotifyOnChange:Z

    .line 134
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    .local p3, objects:[Ljava/lang/Object;,"[TT;"
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mLock:Ljava/lang/Object;

    .line 59
    iput v1, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mFieldId:I

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mNotifyOnChange:Z

    .line 109
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 110
    return-void
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 18
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "resource"

    .prologue
    .line 398
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    if-nez p2, :cond_1

    .line 399
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v15, 0x0

    move/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v14, v0, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 405
    .local v12, view:Landroid/view/View;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mFieldId:I

    if-nez v14, :cond_2

    .line 407
    move-object v0, v12

    check-cast v0, Landroid/widget/TextView;

    move-object v9, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .local v9, text:Landroid/widget/TextView;
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .line 419
    .local v5, item:Ljava/lang/Object;,"TT;"
    instance-of v14, v5, Ljava/lang/CharSequence;

    if-eqz v14, :cond_3

    .line 420
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 421
    .local v10, textItem:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 423
    .local v7, parentWidth:I
    if-lez v7, :cond_0

    .line 424
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 425
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 426
    .local v6, paint:Landroid/text/TextPaint;
    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-int v11, v14

    .line 428
    .local v11, textWidth:I
    add-int/lit8 v13, v7, -0x32

    .line 429
    .local v13, viewWidth:I
    if-le v11, v13, :cond_0

    .line 430
    const-string v14, "@"

    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 431
    .local v8, parts:[Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "@"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-int v2, v14

    .line 432
    .local v2, domainWidth:I
    const/4 v14, 0x0

    aget-object v14, v8, v14

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v15

    sub-int v16, v13, v2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static/range {v14 .. v17}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 434
    .local v4, ellipsizedUserName:Ljava/lang/CharSequence;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "@"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 437
    .end local v2           #domainWidth:I
    .end local v4           #ellipsizedUserName:Ljava/lang/CharSequence;
    .end local v6           #paint:Landroid/text/TextPaint;
    .end local v8           #parts:[Ljava/lang/String;
    .end local v11           #textWidth:I
    .end local v13           #viewWidth:I
    :cond_0
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    .end local v7           #parentWidth:I
    .end local v10           #textItem:Ljava/lang/String;
    :goto_2
    return-object v12

    .line 401
    .end local v5           #item:Ljava/lang/Object;,"TT;"
    .end local v9           #text:Landroid/widget/TextView;
    .end local v12           #view:Landroid/view/View;
    :cond_1
    move-object/from16 v12, p2

    .restart local v12       #view:Landroid/view/View;
    goto/16 :goto_0

    .line 410
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mFieldId:I

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v9       #text:Landroid/widget/TextView;
    goto/16 :goto_1

    .line 412
    .end local v9           #text:Landroid/widget/TextView;
    :catch_0
    move-exception v3

    .line 413
    .local v3, e:Ljava/lang/ClassCastException;
    const-string v14, "ArrayAdapter"

    const-string v15, "You must supply a resource ID for a TextView"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "ArrayAdapter requires the resource ID to be a TextView"

    invoke-direct {v14, v15, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 439
    .end local v3           #e:Ljava/lang/ClassCastException;
    .restart local v5       #item:Ljava/lang/Object;,"TT;"
    .restart local v9       #text:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private init(Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mContext:Landroid/content/Context;

    .line 333
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 334
    iput p2, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mResource:I

    .line 335
    iput p2, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mDropDownResource:I

    .line 336
    iput-object p4, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mObjects:Ljava/util/List;

    .line 337
    iput p3, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mFieldId:I

    .line 338
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    iget-boolean v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->notifyDataSetChanged()V

    .line 194
    :cond_0
    return-void

    .line 188
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    iget-object v1, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 208
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    iget-boolean v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->notifyDataSetChanged()V

    .line 212
    :cond_0
    return-void

    .line 206
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    .local p1, items:[Ljava/lang/Object;,"[TT;"
    iget-object v1, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 226
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget-boolean v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->notifyDataSetChanged()V

    .line 230
    :cond_0
    return-void

    .line 224
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mObjects:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 273
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    iget-object v1, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 279
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    iget-boolean v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->notifyDataSetChanged()V

    .line 283
    :cond_0
    return-void

    .line 277
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 347
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 355
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDataLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 175
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 460
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    iget v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mDropDownResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 469
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Lcom/android/email/activity/setup/DropdownAccountsFilter;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/DropdownAccountsFilter;-><init>(Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mFilter:Landroid/widget/Filter;

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 382
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mObjects:Ljava/util/List;

    return-object v0
.end method

.method public getOriginalValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 390
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    iget v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/Object;I)V
    .locals 2
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 245
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iget-boolean v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->notifyDataSetChanged()V

    .line 249
    :cond_0
    return-void

    .line 243
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 309
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mNotifyOnChange:Z

    .line 311
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 263
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    iget-boolean v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->notifyDataSetChanged()V

    .line 267
    :cond_0
    return-void

    .line 261
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setDropDownViewResource(I)V
    .locals 0
    .parameter "resource"

    .prologue
    .line 452
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    iput p1, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mDropDownResource:I

    .line 453
    return-void
.end method

.method public setFilter(Landroid/widget/Filter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 476
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    iput-object p1, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mFilter:Landroid/widget/Filter;

    .line 477
    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 0
    .parameter "notifyOnChange"

    .prologue
    .line 328
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mNotifyOnChange:Z

    .line 329
    return-void
.end method

.method public setObjects(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mObjects:Ljava/util/List;

    .line 160
    return-void
.end method

.method public setOriginalValues(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    .local p1, originalValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    iput-object p1, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    .line 168
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 151
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    iput-object p1, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mUserName:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, this:Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;,"Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter<TT;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    iget-object v1, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 298
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    iget-boolean v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->notifyDataSetChanged()V

    .line 302
    :cond_0
    return-void

    .line 296
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/setup/DropdownAccountsArrayAdapter;->mObjects:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
