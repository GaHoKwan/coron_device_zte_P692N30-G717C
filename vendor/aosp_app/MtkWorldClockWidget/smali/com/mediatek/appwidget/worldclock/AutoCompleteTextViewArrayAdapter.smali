.class public Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "AutoCompleteTextViewArrayAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$1;,
        Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;
    }
.end annotation

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

.field private mFilter:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter",
            "<TT;>.ArrayFilter;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mLock:Ljava/lang/Object;

    .line 92
    iput v1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mFieldId:I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mNotifyOnChange:Z

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"

    .prologue
    .line 128
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mLock:Ljava/lang/Object;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mFieldId:I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mNotifyOnChange:Z

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 130
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
    .line 178
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mLock:Ljava/lang/Object;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mFieldId:I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mNotifyOnChange:Z

    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 180
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
    .line 153
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    .local p4, objects:[Ljava/lang/Object;,"[TT;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mLock:Ljava/lang/Object;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mFieldId:I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mNotifyOnChange:Z

    .line 154
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 155
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
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mLock:Ljava/lang/Object;

    .line 92
    iput v1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mFieldId:I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mNotifyOnChange:Z

    .line 166
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 167
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
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    .local p3, objects:[Ljava/lang/Object;,"[TT;"
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mLock:Ljava/lang/Object;

    .line 92
    iput v1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mFieldId:I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mNotifyOnChange:Z

    .line 141
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    .line 142
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mObjects:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mObjects:Ljava/util/List;

    return-object p1
.end method

.method public static createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 2
    .parameter "context"
    .parameter "textArrayResId"
    .parameter "textViewResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 444
    .local v0, strings:[Ljava/lang/CharSequence;
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-direct {v1, p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-object v1
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "resource"

    .prologue
    .line 383
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    if-nez p2, :cond_0

    .line 384
    iget-object v5, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v5, p4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 390
    .local v4, view:Landroid/view/View;
    :goto_0
    :try_start_0
    iget v5, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mFieldId:I

    if-nez v5, :cond_1

    .line 392
    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .local v3, text:Landroid/widget/TextView;
    :goto_1
    invoke-virtual {p0, p1}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 404
    .local v2, item:Ljava/lang/Object;,"TT;"
    instance-of v5, v2, Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    .line 405
    check-cast v2, Ljava/lang/CharSequence;

    .end local v2           #item:Ljava/lang/Object;,"TT;"
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    :goto_2
    return-object v4

    .line 386
    .end local v3           #text:Landroid/widget/TextView;
    .end local v4           #view:Landroid/view/View;
    :cond_0
    move-object v4, p2

    .restart local v4       #view:Landroid/view/View;
    goto :goto_0

    .line 395
    :cond_1
    :try_start_1
    iget v5, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mFieldId:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3       #text:Landroid/widget/TextView;
    goto :goto_1

    .line 397
    .end local v3           #text:Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 398
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v5, "ArrayAdapter"

    const-string v6, "You must supply a resource ID for a TextView"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "ArrayAdapter requires the resource ID to be a TextView"

    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 407
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v2       #item:Ljava/lang/Object;,"TT;"
    .restart local v3       #text:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
    .line 322
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mContext:Landroid/content/Context;

    .line 323
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 324
    iput p2, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mDropDownResource:I

    iput p2, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mResource:I

    .line 325
    iput-object p4, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mObjects:Ljava/util/List;

    .line 326
    iput p3, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mFieldId:I

    .line 327
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
    .line 188
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-boolean v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->notifyDataSetChanged()V

    .line 196
    :cond_0
    return-void

    .line 192
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
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
    .line 204
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 210
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-boolean v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->notifyDataSetChanged()V

    .line 212
    :cond_0
    return-void

    .line 208
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 210
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
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    .local p1, items:[Ljava/lang/Object;,"[TT;"
    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 226
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget-boolean v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->notifyDataSetChanged()V

    .line 228
    :cond_0
    return-void

    .line 224
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mObjects:Ljava/util/List;

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
    .line 267
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 273
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    iget-boolean v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->notifyDataSetChanged()V

    .line 275
    :cond_0
    return-void

    .line 271
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 273
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
    .line 336
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 343
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 428
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    iget v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mDropDownResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 451
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mFilter:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;

    if-nez v0, :cond_0

    .line 452
    new-instance v0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;-><init>(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$1;)V

    iput-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mFilter:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mFilter:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter$ArrayFilter;

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
    .line 350
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 368
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
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
    .line 361
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 375
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    iget v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

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
    .line 237
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 243
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    iget-boolean v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->notifyDataSetChanged()V

    .line 245
    :cond_0
    return-void

    .line 241
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 243
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
    .line 299
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mNotifyOnChange:Z

    .line 301
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
    .line 253
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 259
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    iget-boolean v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->notifyDataSetChanged()V

    .line 261
    :cond_0
    return-void

    .line 257
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
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
    .line 420
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    iput p1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mDropDownResource:I

    .line 421
    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 0
    .parameter "notifyOnChange"

    .prologue
    .line 318
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mNotifyOnChange:Z

    .line 319
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
    .line 284
    .local p0, this:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;,"Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter<TT;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    iget-object v1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 290
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    iget-boolean v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->notifyDataSetChanged()V

    .line 292
    :cond_0
    return-void

    .line 288
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewArrayAdapter;->mObjects:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
