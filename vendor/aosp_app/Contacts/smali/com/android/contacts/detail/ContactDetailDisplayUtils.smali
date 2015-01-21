.class public Lcom/android/contacts/detail/ContactDetailDisplayUtils;
.super Ljava/lang/Object;
.source "ContactDetailDisplayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;,
        Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactDetailDisplayUtils"

.field private static sImageGetter:Landroid/text/Html$ImageGetter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method static addStreamItemText(Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "streamItem"
    .parameter "rootView"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 356
    const v4, 0x7f0701cf

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 357
    .local v2, htmlView:Landroid/widget/TextView;
    const v4, 0x7f0701d0

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 359
    .local v0, attributionView:Landroid/widget/TextView;
    const v4, 0x7f0701d1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 360
    .local v1, commentsView:Landroid/widget/TextView;
    new-instance v3, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;-><init>(Landroid/content/pm/PackageManager;)V

    .line 363
    .local v3, imageGetter:Landroid/text/Html$ImageGetter;
    invoke-virtual {p1}, Lcom/android/contacts/util/StreamItemEntry;->getDecodedText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 365
    invoke-static {p1, p0}, Lcom/android/contacts/util/ContactBadgeUtil;->getSocialDate(Lcom/android/contacts/util/StreamItemEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 368
    invoke-virtual {p1}, Lcom/android/contacts/util/StreamItemEntry;->getDecodedComments()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 369
    return-object p2
.end method

.method public static configureStarredImageView(Landroid/widget/ImageView;ZZZ)V
    .locals 3
    .parameter "starredView"
    .parameter "isDirectoryEntry"
    .parameter "isUserProfile"
    .parameter "isStarred"

    .prologue
    .line 187
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 188
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    if-eqz p3, :cond_0

    const v0, 0x7f020032

    .line 192
    .local v0, resId:I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p3, :cond_1

    const v1, 0x7f0c012a

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 199
    .end local v0           #resId:I
    :goto_2
    return-void

    .line 189
    :cond_0
    const v0, 0x7f020030

    goto :goto_0

    .line 194
    .restart local v0       #resId:I
    :cond_1
    const v1, 0x7f0c0129

    goto :goto_1

    .line 197
    .end local v0           #resId:I
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public static configureStarredMenuItem(Landroid/view/MenuItem;ZZZ)V
    .locals 2
    .parameter "starredMenuItem"
    .parameter "isDirectoryEntry"
    .parameter "isUserProfile"
    .parameter "isStarred"

    .prologue
    .line 207
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 208
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 209
    if-eqz p3, :cond_0

    const v0, 0x7f020031

    .line 212
    .local v0, resId:I
    :goto_0
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 213
    invoke-interface {p0, p3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 214
    if-eqz p3, :cond_1

    const v1, 0x7f0c012a

    :goto_1
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 218
    .end local v0           #resId:I
    :goto_2
    return-void

    .line 209
    :cond_0
    const v0, 0x7f02002f

    goto :goto_0

    .line 214
    .restart local v0       #resId:I
    :cond_1
    const v1, 0x7f0c0129

    goto :goto_1

    .line 216
    .end local v0           #resId:I
    :cond_2
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public static createStreamItemView(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/util/StreamItemEntry;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 16
    .parameter "inflater"
    .parameter "context"
    .parameter "convertView"
    .parameter "streamItem"
    .parameter "photoClickListener"

    .prologue
    .line 259
    if-eqz p2, :cond_1

    .line 260
    move-object/from16 v8, p2

    .line 265
    .local v8, container:Landroid/view/View;
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    .line 266
    .local v2, contactPhotoManager:Lcom/android/contacts/ContactPhotoManager;
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/util/StreamItemEntry;->getPhotos()Ljava/util/List;

    move-result-object v14

    .line 267
    .local v14, photos:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/util/StreamItemPhotoEntry;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    .line 270
    .local v13, photoCount:I
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1, v8}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->addStreamItemText(Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/view/View;)Landroid/view/View;

    .line 273
    const v3, 0x7f0701ce

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 275
    .local v10, imageRows:Landroid/view/ViewGroup;
    if-nez v13, :cond_2

    .line 277
    const/16 v3, 0x8

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    .line 327
    :cond_0
    return-object v8

    .line 262
    .end local v2           #contactPhotoManager:Lcom/android/contacts/ContactPhotoManager;
    .end local v8           #container:Landroid/view/View;
    .end local v10           #imageRows:Landroid/view/ViewGroup;
    .end local v13           #photoCount:I
    .end local v14           #photos:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/util/StreamItemPhotoEntry;>;"
    :cond_1
    const v3, 0x7f0400c9

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .restart local v8       #container:Landroid/view/View;
    goto :goto_0

    .line 280
    .restart local v2       #contactPhotoManager:Lcom/android/contacts/ContactPhotoManager;
    .restart local v10       #imageRows:Landroid/view/ViewGroup;
    .restart local v13       #photoCount:I
    .restart local v14       #photos:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/util/StreamItemPhotoEntry;>;"
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    .line 283
    add-int/lit8 v3, v13, 0x1

    div-int/lit8 v11, v3, 0x2

    .line 286
    .local v11, numImageRows:I
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    .line 289
    .local v12, numOldImageRows:I
    if-ne v12, v11, :cond_4

    .line 306
    :cond_3
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v13, :cond_0

    .line 307
    div-int/lit8 v3, v9, 0x2

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 309
    .local v5, imageRow:Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 312
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/util/StreamItemPhotoEntry;

    const v6, 0x7f0701d4

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 314
    const v3, 0x7f0701d5

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 315
    .local v15, secondContainer:Landroid/view/View;
    add-int/lit8 v3, v9, 0x1

    if-ge v3, v13, :cond_6

    .line 317
    add-int/lit8 v3, v9, 0x1

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/util/StreamItemPhotoEntry;

    const v6, 0x7f0701d6

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 319
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    .line 306
    :goto_2
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    .line 292
    .end local v5           #imageRow:Landroid/view/View;
    .end local v9           #i:I
    .end local v15           #secondContainer:Landroid/view/View;
    :cond_4
    if-ge v12, v11, :cond_5

    .line 294
    move v9, v12

    .restart local v9       #i:I
    :goto_3
    if-ge v9, v11, :cond_3

    .line 295
    const v3, 0x7f0400cb

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 294
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 300
    .end local v9           #i:I
    :cond_5
    move v9, v11

    .restart local v9       #i:I
    :goto_4
    if-ge v9, v12, :cond_3

    .line 301
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 300
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 322
    .restart local v5       #imageRow:Landroid/view/View;
    .restart local v15       #secondContainer:Landroid/view/View;
    :cond_6
    const/4 v3, 0x4

    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public static getAttribution(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "contactData"

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getDirectoryDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, directoryDisplayName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getDirectoryType()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, directoryType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v0

    .line 135
    .local v2, displayName:Ljava/lang/String;
    :goto_0
    const v3, 0x7f0c0292

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .end local v0           #directoryDisplayName:Ljava/lang/String;
    .end local v1           #directoryType:Ljava/lang/String;
    .end local v2           #displayName:Ljava/lang/String;
    :goto_1
    return-object v3

    .restart local v0       #directoryDisplayName:Ljava/lang/String;
    .restart local v1       #directoryType:Ljava/lang/String;
    :cond_0
    move-object v2, v1

    .line 132
    goto :goto_0

    .line 137
    .end local v0           #directoryDisplayName:Ljava/lang/String;
    .end local v1           #directoryType:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getCompany(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "contactData"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 145
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getDisplayNameSource()I

    move-result v12

    const/16 v13, 0x1e

    if-ne v12, v13, :cond_2

    move v3, v9

    .line 147
    .local v3, displayNameIsOrganization:Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/RawContact;

    .line 148
    .local v7, rawContact:Lcom/android/contacts/model/RawContact;
    invoke-virtual {v7}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v12

    const-class v13, Lcom/android/contacts/model/dataitem/OrganizationDataItem;

    invoke-static {v12, v13}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/dataitem/OrganizationDataItem;

    .local v2, dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    move-object v6, v2

    .line 150
    check-cast v6, Lcom/android/contacts/model/dataitem/OrganizationDataItem;

    .line 151
    .local v6, organization:Lcom/android/contacts/model/dataitem/OrganizationDataItem;
    invoke-virtual {v6}, Lcom/android/contacts/model/dataitem/OrganizationDataItem;->getCompany()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, company:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/contacts/model/dataitem/OrganizationDataItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, title:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 158
    if-eqz v3, :cond_3

    move-object v0, v11

    .line 173
    .local v0, combined:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 178
    .end local v0           #combined:Ljava/lang/String;
    .end local v1           #company:Ljava/lang/String;
    .end local v2           #dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #organization:Lcom/android/contacts/model/dataitem/OrganizationDataItem;
    .end local v7           #rawContact:Lcom/android/contacts/model/RawContact;
    .end local v8           #title:Ljava/lang/String;
    :goto_2
    return-object v0

    .end local v3           #displayNameIsOrganization:Z
    :cond_2
    move v3, v10

    .line 145
    goto :goto_0

    .restart local v1       #company:Ljava/lang/String;
    .restart local v2       #dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    .restart local v3       #displayNameIsOrganization:Z
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #organization:Lcom/android/contacts/model/dataitem/OrganizationDataItem;
    .restart local v7       #rawContact:Lcom/android/contacts/model/RawContact;
    .restart local v8       #title:Ljava/lang/String;
    :cond_3
    move-object v0, v8

    .line 158
    goto :goto_1

    .line 160
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 161
    if-eqz v3, :cond_5

    move-object v0, v11

    .restart local v0       #combined:Ljava/lang/String;
    :goto_3
    goto :goto_1

    .end local v0           #combined:Ljava/lang/String;
    :cond_5
    move-object v0, v1

    goto :goto_3

    .line 163
    :cond_6
    if-eqz v3, :cond_7

    .line 164
    move-object v0, v8

    .restart local v0       #combined:Ljava/lang/String;
    goto :goto_1

    .line 166
    .end local v0           #combined:Ljava/lang/String;
    :cond_7
    const v12, 0x7f0c02a3

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v1, v13, v10

    aput-object v8, v13, v9

    invoke-virtual {p0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #combined:Ljava/lang/String;
    goto :goto_1

    .end local v0           #combined:Ljava/lang/String;
    .end local v1           #company:Ljava/lang/String;
    .end local v2           #dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #organization:Lcom/android/contacts/model/dataitem/OrganizationDataItem;
    .end local v7           #rawContact:Lcom/android/contacts/model/RawContact;
    .end local v8           #title:Ljava/lang/String;
    :cond_8
    move-object v0, v11

    .line 178
    goto :goto_2
.end method

.method public static getDisplayName(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "context"
    .parameter "contactData"

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, displayName:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getAltDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, altDisplayName:Ljava/lang/CharSequence;
    new-instance v2, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v2, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    .line 100
    .local v2, prefs:Lcom/android/contacts/preference/ContactsPreferences;
    const-string v3, ""

    .line 101
    .local v3, styledName:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 102
    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 103
    move-object v3, v1

    .line 110
    :goto_0
    return-object v3

    .line 105
    :cond_0
    move-object v3, v0

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c01fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getFirstListItemOffset(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 533
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    :cond_0
    const/high16 v0, -0x8000

    .line 537
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method public static getImageGetter(Landroid/content/Context;)Landroid/text/Html$ImageGetter;
    .locals 2
    .parameter "context"

    .prologue
    .line 433
    sget-object v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->sImageGetter:Landroid/text/Html$ImageGetter;

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;-><init>(Landroid/content/pm/PackageManager;)V

    sput-object v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->sImageGetter:Landroid/text/Html$ImageGetter;

    .line 436
    :cond_0
    sget-object v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->sImageGetter:Landroid/text/Html$ImageGetter;

    return-object v0
.end method

.method public static getPhoneticName(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "contactData"

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getPhoneticName()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, phoneticName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    .end local v0           #phoneticName:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #phoneticName:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V
    .locals 8
    .parameter "contactPhotoManager"
    .parameter "streamItem"
    .parameter "streamItemPhoto"
    .parameter "photoContainer"
    .parameter "imageViewId"
    .parameter "photoClickListener"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 334
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 335
    .local v6, frame:Landroid/view/View;
    const v0, 0x7f0701d3

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 336
    .local v7, pushLayerView:Landroid/view/View;
    const v0, 0x7f0701bc

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 337
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz p5, :cond_0

    .line 338
    invoke-virtual {v7, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    new-instance v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;

    invoke-direct {v0, p1, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;-><init>(Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 340
    invoke-virtual {v7, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 341
    invoke-virtual {v7, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 350
    :goto_0
    invoke-virtual {p2}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x1

    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V

    .line 352
    return-void

    .line 343
    :cond_0
    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 345
    invoke-virtual {v7, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 347
    invoke-virtual {v7, v4}, Landroid/view/View;->setClickable(Z)V

    .line 348
    invoke-virtual {v7, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static requestToMoveToOffset(Landroid/widget/ListView;I)V
    .locals 2
    .parameter "listView"
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 553
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 563
    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public static setAlphaOnViewBackground(Landroid/view/View;F)V
    .locals 2
    .parameter "view"
    .parameter "alpha"

    .prologue
    .line 519
    if-eqz p0, :cond_0

    .line 522
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {p1, v0, v1}, Lcom/android/contacts/util/MoreMath;->clamp(FFF)F

    move-result v0

    const/high16 v1, 0x437f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 524
    :cond_0
    return-void
.end method

.method public static setAttribution(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/TextView;)V
    .locals 1
    .parameter "context"
    .parameter "contactData"
    .parameter "textView"

    .prologue
    .line 410
    if-nez p2, :cond_0

    .line 414
    :goto_0
    return-void

    .line 413
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getAttribution(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public static setCompanyName(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/TextView;)V
    .locals 1
    .parameter "context"
    .parameter "contactData"
    .parameter "textView"

    .prologue
    .line 388
    if-nez p2, :cond_0

    .line 392
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getCompany(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private static setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 1
    .parameter "textToDisplay"
    .parameter "textView"

    .prologue
    .line 421
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :goto_0
    return-void

    .line 425
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setDisplayName(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/TextView;)V
    .locals 1
    .parameter "context"
    .parameter "contactData"
    .parameter "textView"

    .prologue
    .line 377
    if-nez p2, :cond_0

    .line 381
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getDisplayName(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public static setPhoneticName(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/TextView;)V
    .locals 1
    .parameter "context"
    .parameter "contactData"
    .parameter "textView"

    .prologue
    .line 399
    if-nez p2, :cond_0

    .line 403
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getPhoneticName(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public static setSocialSnippet(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 10
    .parameter "context"
    .parameter "contactData"
    .parameter "statusView"
    .parameter "statusPhotoView"

    .prologue
    const/4 v4, 0x0

    .line 225
    if-nez p2, :cond_0

    .line 251
    :goto_0
    return-void

    .line 229
    :cond_0
    const/4 v9, 0x0

    .line 230
    .local v9, snippet:Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 231
    .local v8, photoUri:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getStreamItems()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getStreamItems()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/util/StreamItemEntry;

    .line 233
    .local v6, firstEntry:Lcom/android/contacts/util/StreamItemEntry;
    invoke-virtual {v6}, Lcom/android/contacts/util/StreamItemEntry;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/contacts/util/HtmlUtils;->fromHtml(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    .line 234
    invoke-virtual {v6}, Lcom/android/contacts/util/StreamItemEntry;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    invoke-virtual {v6}, Lcom/android/contacts/util/StreamItemEntry;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/util/StreamItemPhotoEntry;

    .line 236
    .local v7, firstPhoto:Lcom/android/contacts/util/StreamItemPhotoEntry;
    invoke-virtual {v7}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getPhotoUri()Ljava/lang/String;

    move-result-object v8

    .line 239
    const/4 v9, 0x0

    .line 242
    .end local v6           #firstEntry:Lcom/android/contacts/util/StreamItemEntry;
    .end local v7           #firstPhoto:Lcom/android/contacts/util/StreamItemPhotoEntry;
    :cond_1
    invoke-static {v9, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 243
    if-eqz v8, :cond_2

    .line 244
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x1

    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V

    .line 247
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 249
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
