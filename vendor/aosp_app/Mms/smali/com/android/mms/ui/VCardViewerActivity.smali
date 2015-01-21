.class public Lcom/android/mms/ui/VCardViewerActivity;
.super Landroid/app/Activity;
.source "VCardViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/VCardViewerActivity$VCardViewerAdapter;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDefaultContactImage:Landroid/graphics/drawable/Drawable;

.field private mListAdapter:Lcom/android/mms/ui/VCardViewerActivity$VCardViewerAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mVCardEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mVCardModel:Lcom/android/mms/model/VCardModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const-string v0, "Mms/VCardViewer"

    sput-object v0, Lcom/android/mms/ui/VCardViewerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/VCardViewerActivity;)Lcom/android/mms/model/VCardModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/VCardViewerActivity;->mVCardModel:Lcom/android/mms/model/VCardModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/VCardViewerActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/VCardViewerActivity;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/VCardViewerActivity;Lcom/android/vcard/VCardEntry;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VCardViewerActivity;->getVCardContentString(Lcom/android/vcard/VCardEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVCardContentString(Lcom/android/vcard/VCardEntry;)Ljava/lang/String;
    .locals 2
    .parameter "vCardEntry"

    .prologue
    .line 183
    new-instance v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;

    invoke-direct {v0}, Lcom/android/mms/util/VCardUtils$MyToStringIterator;-><init>()V

    .line 184
    .local v0, iterator:Lcom/android/mms/util/VCardUtils$MyToStringIterator;
    invoke-virtual {v0, p0}, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->setContext(Landroid/content/Context;)V

    .line 185
    invoke-virtual {p0, v0, p1}, Lcom/android/mms/ui/VCardViewerActivity;->iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;Lcom/android/vcard/VCardEntry;)V

    .line 186
    invoke-virtual {v0}, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initResourceRefs()V
    .locals 2

    .prologue
    .line 177
    const v0, 0x7f0f0197

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/ui/VCardViewerActivity;->mListView:Landroid/widget/ListView;

    .line 178
    new-instance v0, Lcom/android/mms/ui/VCardViewerActivity$VCardViewerAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/VCardViewerActivity;->mVCardEntryList:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/mms/ui/VCardViewerActivity$VCardViewerAdapter;-><init>(Lcom/android/mms/ui/VCardViewerActivity;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/mms/ui/VCardViewerActivity;->mListAdapter:Lcom/android/mms/ui/VCardViewerActivity$VCardViewerAdapter;

    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/VCardViewerActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/VCardViewerActivity;->mListAdapter:Lcom/android/mms/ui/VCardViewerActivity$VCardViewerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    return-void
.end method

.method private iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 3
    .parameter
    .parameter "iterator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/vcard/VCardEntry$EntryElement;",
            ">;",
            "Lcom/android/vcard/VCardEntry$EntryElementIterator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, elemList:Ljava/util/List;,"Ljava/util/List<+Lcom/android/vcard/VCardEntry$EntryElement;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 224
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry$EntryElement;

    invoke-interface {v2}, Lcom/android/vcard/VCardEntry$EntryElement;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 225
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EntryElement;

    .line 226
    .local v0, elem:Lcom/android/vcard/VCardEntry$EntryElement;
    invoke-interface {p2, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    goto :goto_0

    .line 228
    .end local v0           #elem:Lcom/android/vcard/VCardEntry$EntryElement;
    :cond_0
    invoke-interface {p2}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 230
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public final iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;Lcom/android/vcard/VCardEntry;)V
    .locals 2
    .parameter "iterator"
    .parameter "vCardEntry"

    .prologue
    .line 190
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onIterationStarted()V

    .line 191
    invoke-virtual {p2}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry$NameData;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 192
    invoke-virtual {p2}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 193
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 195
    invoke-virtual {p2}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/VCardViewerActivity;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 196
    invoke-virtual {p2}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/VCardViewerActivity;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 197
    invoke-virtual {p2}, Lcom/android/vcard/VCardEntry;->getImList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/VCardViewerActivity;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 198
    invoke-virtual {p2}, Lcom/android/vcard/VCardEntry;->getNickNameList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/VCardViewerActivity;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 199
    invoke-virtual {p2}, Lcom/android/vcard/VCardEntry;->getWebsiteList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/VCardViewerActivity;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 200
    invoke-virtual {p2}, Lcom/android/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/VCardViewerActivity;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 201
    invoke-virtual {p2}, Lcom/android/vcard/VCardEntry;->getNotes()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/VCardViewerActivity;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 202
    invoke-virtual {p2}, Lcom/android/vcard/VCardEntry;->getOrganizationList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/VCardViewerActivity;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 207
    invoke-virtual {p2}, Lcom/android/vcard/VCardEntry;->getBirthday()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    new-instance v0, Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-virtual {p2}, Lcom/android/vcard/VCardEntry;->getBirthday()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry$BirthdayData;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, birthdayData:Lcom/android/vcard/VCardEntry$BirthdayData;
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$BirthdayData;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 210
    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 211
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 218
    .end local v0           #birthdayData:Lcom/android/vcard/VCardEntry$BirthdayData;
    :cond_0
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onIterationEnded()V

    .line 219
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f0b00b7

    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const v3, 0x7f040072

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 128
    .local v0, dataUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 129
    sget-object v3, Lcom/android/mms/ui/VCardViewerActivity;->TAG:Ljava/lang/String;

    const-string v4, "onCreate(): dataUri is null!"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {p0, v5}, Lcom/android/mms/util/VCardUtils;->toastErrorHappened(Landroid/content/Context;I)V

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 157
    :goto_0
    return-void

    .line 135
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "file_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, filename:Ljava/lang/String;
    new-instance v3, Lcom/android/mms/model/VCardModel;

    const-string v4, "text/x-vCard"

    invoke-direct {v3, p0, v4, v2, v0}, Lcom/android/mms/model/VCardModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v3, p0, Lcom/android/mms/ui/VCardViewerActivity;->mVCardModel:Lcom/android/mms/model/VCardModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    iget-object v3, p0, Lcom/android/mms/ui/VCardViewerActivity;->mVCardModel:Lcom/android/mms/model/VCardModel;

    if-nez v3, :cond_1

    .line 145
    sget-object v3, Lcom/android/mms/ui/VCardViewerActivity;->TAG:Ljava/lang/String;

    const-string v4, "onCreate(): mVCardModel is null!"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {p0, v5}, Lcom/android/mms/util/VCardUtils;->toastErrorHappened(Landroid/content/Context;I)V

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 138
    .end local v2           #filename:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 139
    .local v1, e:Lcom/google/android/mms/MmsException;
    sget-object v3, Lcom/android/mms/ui/VCardViewerActivity;->TAG:Ljava/lang/String;

    const-string v4, "onCreate(): Exception happen in VCardModel construction!"

    invoke-static {v3, v4, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    invoke-static {p0, v5}, Lcom/android/mms/util/VCardUtils;->toastErrorHappened(Landroid/content/Context;I)V

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 150
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    .restart local v2       #filename:Ljava/lang/String;
    :cond_1
    new-instance v3, Lcom/android/vcard/VCardEntryConstructor;

    invoke-direct {v3}, Lcom/android/vcard/VCardEntryConstructor;-><init>()V

    const/4 v4, 0x0

    invoke-static {p0, v0, v3, v4}, Lcom/android/mms/util/VCardUtils;->parserVCardFile(Landroid/content/Context;Landroid/net/Uri;Lcom/android/vcard/VCardEntryConstructor;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/VCardViewerActivity;->mVCardEntryList:Ljava/util/List;

    .line 151
    iget-object v3, p0, Lcom/android/mms/ui/VCardViewerActivity;->mVCardEntryList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/VCardViewerActivity;->mVCardEntryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 152
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 155
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/VCardViewerActivity;->initResourceRefs()V

    .line 156
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/VCardViewerActivity;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 162
    const v1, 0x7f0b00b7

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 164
    .local v0, importMenu:Landroid/view/MenuItem;
    new-instance v1, Lcom/android/mms/ui/VCardViewerActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/VCardViewerActivity$1;-><init>(Lcom/android/mms/ui/VCardViewerActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 173
    const/4 v1, 0x1

    return v1
.end method
