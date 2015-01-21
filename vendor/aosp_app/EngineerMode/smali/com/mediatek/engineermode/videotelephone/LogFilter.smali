.class public Lcom/mediatek/engineermode/videotelephone/LogFilter;
.super Landroid/app/ListActivity;
.source "LogFilter.java"


# static fields
.field public static final TAR_NAME:Ljava/lang/String; = "tag_name"

.field public static final TAR_NAME_KEY:Ljava/lang/String; = "tag_name_key"

.field public static final TAR_VALUE_KEY:Ljava/lang/String; = "tag_value_key"


# instance fields
.field private mItemArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/videotelephone/LogFilter;->mItemArray:[Ljava/lang/String;

    .line 61
    const v1, 0x7f030095

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 62
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/LogFilter;->mItemArray:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 65
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 70
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 72
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/engineermode/videotelephone/TagsSelectActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "tag_name_key"

    sget-object v3, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->LOG_FILTER_TAGKEY:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v2, "tag_name"

    iget-object v3, p0, Lcom/mediatek/engineermode/videotelephone/LogFilter;->mItemArray:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v2, "tag_value_key"

    sget-object v3, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->LOG_FILTER_TAGVALUE:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "EM/VideoTelephony"

    const-string v3, "TagsSelectActivity can not find."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
