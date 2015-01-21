.class public Lcom/android/keychain/KeyChainActivity;
.super Landroid/app/Activity;
.source "KeyChainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keychain/KeyChainActivity$6;,
        Lcom/android/keychain/KeyChainActivity$ResponseSender;,
        Lcom/android/keychain/KeyChainActivity$ViewHolder;,
        Lcom/android/keychain/KeyChainActivity$CertificateAdapter;,
        Lcom/android/keychain/KeyChainActivity$AliasLoader;,
        Lcom/android/keychain/KeyChainActivity$State;
    }
.end annotation


# static fields
.field private static KEY_STATE:Ljava/lang/String; = null

.field private static final REQUEST_UNLOCK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "KeyChain"


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mSender:Landroid/app/PendingIntent;

.field private mSenderUid:I

.field private mState:Lcom/android/keychain/KeyChainActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "state"

    sput-object v0, Lcom/android/keychain/KeyChainActivity;->KEY_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keychain/KeyChainActivity;->mKeyStore:Landroid/security/KeyStore;

    .line 411
    return-void
.end method

.method static synthetic access$100(Lcom/android/keychain/KeyChainActivity;)Landroid/security/KeyStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keychain/KeyChainActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/keychain/KeyChainActivity;->mSenderUid:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keychain/KeyChainActivity;Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/keychain/KeyChainActivity;->displayCertChooserDialog(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keychain/KeyChainActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/keychain/KeyChainActivity;->finish(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keychain/KeyChainActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private displayCertChooserDialog(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)V
    .locals 32
    .parameter "adapter"

    .prologue
    .line 169
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    .local v8, builder:Landroid/app/AlertDialog$Builder;
    const v28, 0x7f020002

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 172
    .local v10, contextView:Landroid/widget/TextView;
    const v28, 0x7f020001

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 174
    .local v13, footer:Landroid/view/View;
    const/high16 v28, 0x7f02

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ListView;

    .line 175
    .local v21, lv:Landroid/widget/ListView;
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v10, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 176
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v13, v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 177
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 180
    new-instance v28, Lcom/android/keychain/KeyChainActivity$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/keychain/KeyChainActivity$1;-><init>(Lcom/android/keychain/KeyChainActivity;Landroid/widget/ListView;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 187
    #getter for: Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->mAliases:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->access$400(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->isEmpty()Z

    move-result v12

    .line 188
    .local v12, empty:Z
    if-eqz v12, :cond_2

    const/high16 v22, 0x104

    .line 189
    .local v22, negativeLabel:I
    :goto_0
    new-instance v28, Lcom/android/keychain/KeyChainActivity$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keychain/KeyChainActivity$2;-><init>(Lcom/android/keychain/KeyChainActivity;)V

    move/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 197
    .local v26, res:Landroid/content/res/Resources;
    if-eqz v12, :cond_3

    .line 198
    const v28, 0x7f030001

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 227
    .local v27, title:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 229
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keychain/KeyChainActivity;->dialog:Landroid/app/Dialog;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keychain/KeyChainActivity;->mSender:Landroid/app/PendingIntent;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/IntentSender;->getTargetPackage()Ljava/lang/String;

    move-result-object v23

    .line 236
    .local v23, pkg:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 239
    .local v24, pm:Landroid/content/pm/PackageManager;
    const/16 v28, 0x0

    :try_start_0
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 243
    .local v7, applicationLabel:Ljava/lang/CharSequence;
    :goto_2
    const v28, 0x7f030003

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v7, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 246
    .local v6, appMessage:Ljava/lang/String;
    move-object v9, v6

    .line 247
    .local v9, contextMessage:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "host"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 248
    .local v14, host:Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 249
    move-object/from16 v16, v14

    .line 250
    .local v16, hostString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "port"

    const/16 v30, -0x1

    invoke-virtual/range {v28 .. v30}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 251
    .local v25, port:I
    const/16 v28, -0x1

    move/from16 v0, v25

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 252
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ":"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 254
    :cond_0
    const v28, 0x7f030004

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v16, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 256
    .local v15, hostMessage:Ljava/lang/String;
    if-nez v9, :cond_6

    .line 257
    move-object v9, v15

    .line 262
    .end local v15           #hostMessage:Ljava/lang/String;
    .end local v16           #hostString:Ljava/lang/String;
    .end local v25           #port:I
    :cond_1
    :goto_3
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const v28, 0x7f030005

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, ".pfx"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const-string v31, ".p12"

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 266
    .local v18, installMessage:Ljava/lang/String;
    const/high16 v28, 0x7f05

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 267
    .local v19, installText:Landroid/widget/TextView;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    const v28, 0x7f050001

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 270
    .local v17, installButton:Landroid/widget/Button;
    new-instance v28, Lcom/android/keychain/KeyChainActivity$4;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keychain/KeyChainActivity$4;-><init>(Lcom/android/keychain/KeyChainActivity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keychain/KeyChainActivity;->dialog:Landroid/app/Dialog;

    move-object/from16 v28, v0

    new-instance v29, Lcom/android/keychain/KeyChainActivity$5;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keychain/KeyChainActivity$5;-><init>(Lcom/android/keychain/KeyChainActivity;)V

    invoke-virtual/range {v28 .. v29}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keychain/KeyChainActivity;->dialog:Landroid/app/Dialog;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/Dialog;->show()V

    .line 285
    return-void

    .line 188
    .end local v6           #appMessage:Ljava/lang/String;
    .end local v7           #applicationLabel:Ljava/lang/CharSequence;
    .end local v9           #contextMessage:Ljava/lang/String;
    .end local v14           #host:Ljava/lang/String;
    .end local v17           #installButton:Landroid/widget/Button;
    .end local v18           #installMessage:Ljava/lang/String;
    .end local v19           #installText:Landroid/widget/TextView;
    .end local v22           #negativeLabel:I
    .end local v23           #pkg:Ljava/lang/String;
    .end local v24           #pm:Landroid/content/pm/PackageManager;
    .end local v26           #res:Landroid/content/res/Resources;
    .end local v27           #title:Ljava/lang/String;
    :cond_2
    const v22, 0x7f030008

    goto/16 :goto_0

    .line 200
    .restart local v22       #negativeLabel:I
    .restart local v26       #res:Landroid/content/res/Resources;
    :cond_3
    const v28, 0x7f030002

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 201
    .restart local v27       #title:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "alias"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, alias:Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 204
    #getter for: Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->mAliases:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->access$400(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 205
    .local v4, adapterPosition:I
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v4, v0, :cond_4

    .line 206
    add-int/lit8 v20, v4, 0x1

    .line 207
    .local v20, listViewPosition:I
    const/16 v28, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 216
    .end local v4           #adapterPosition:I
    .end local v20           #listViewPosition:I
    :cond_4
    :goto_4
    const v28, 0x7f030007

    new-instance v29, Lcom/android/keychain/KeyChainActivity$3;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keychain/KeyChainActivity$3;-><init>(Lcom/android/keychain/KeyChainActivity;Landroid/widget/ListView;Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)V

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 209
    :cond_5
    #getter for: Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->mAliases:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->access$400(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 211
    const/4 v4, 0x0

    .line 212
    .restart local v4       #adapterPosition:I
    add-int/lit8 v20, v4, 0x1

    .line 213
    .restart local v20       #listViewPosition:I
    const/16 v28, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    goto :goto_4

    .line 240
    .end local v4           #adapterPosition:I
    .end local v5           #alias:Ljava/lang/String;
    .end local v20           #listViewPosition:I
    .restart local v23       #pkg:Ljava/lang/String;
    .restart local v24       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v11

    .line 241
    .local v11, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v7, v23

    .restart local v7       #applicationLabel:Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 259
    .end local v11           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #appMessage:Ljava/lang/String;
    .restart local v9       #contextMessage:Ljava/lang/String;
    .restart local v14       #host:Ljava/lang/String;
    .restart local v15       #hostMessage:Ljava/lang/String;
    .restart local v16       #hostString:Ljava/lang/String;
    .restart local v25       #port:I
    :cond_6
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3
.end method

.method private finish(Ljava/lang/String;)V
    .locals 5
    .parameter "alias"

    .prologue
    const/4 v4, 0x0

    .line 394
    if-nez p1, :cond_0

    .line 395
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 401
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "response"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/security/IKeyChainAliasCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainAliasCallback;

    move-result-object v0

    .line 404
    .local v0, keyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;
    if-eqz v0, :cond_1

    .line 405
    new-instance v2, Lcom/android/keychain/KeyChainActivity$ResponseSender;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/android/keychain/KeyChainActivity$ResponseSender;-><init>(Lcom/android/keychain/KeyChainActivity;Landroid/security/IKeyChainAliasCallback;Ljava/lang/String;Lcom/android/keychain/KeyChainActivity$1;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 409
    :goto_1
    return-void

    .line 397
    .end local v0           #keyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 398
    .local v1, result:Landroid/content/Intent;
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 408
    .end local v1           #result:Landroid/content/Intent;
    .restart local v0       #keyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method private isKeyStoreUnlocked()Z
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showCertChooserDialog()V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/android/keychain/KeyChainActivity$AliasLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keychain/KeyChainActivity$AliasLoader;-><init>(Lcom/android/keychain/KeyChainActivity;Lcom/android/keychain/KeyChainActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 376
    packed-switch p1, :pswitch_data_0

    .line 389
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 378
    :pswitch_0
    invoke-direct {p0}, Lcom/android/keychain/KeyChainActivity;->isKeyStoreUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    sget-object v0, Lcom/android/keychain/KeyChainActivity$State;->INITIAL:Lcom/android/keychain/KeyChainActivity$State;

    iput-object v0, p0, Lcom/android/keychain/KeyChainActivity;->mState:Lcom/android/keychain/KeyChainActivity$State;

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keychain/KeyChainActivity;->finish(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keychain/KeyChainActivity;->finish(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    if-nez p1, :cond_1

    .line 96
    sget-object v0, Lcom/android/keychain/KeyChainActivity$State;->INITIAL:Lcom/android/keychain/KeyChainActivity$State;

    iput-object v0, p0, Lcom/android/keychain/KeyChainActivity;->mState:Lcom/android/keychain/KeyChainActivity$State;

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    sget-object v0, Lcom/android/keychain/KeyChainActivity;->KEY_STATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/keychain/KeyChainActivity$State;

    iput-object v0, p0, Lcom/android/keychain/KeyChainActivity;->mState:Lcom/android/keychain/KeyChainActivity$State;

    .line 99
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity;->mState:Lcom/android/keychain/KeyChainActivity$State;

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lcom/android/keychain/KeyChainActivity$State;->INITIAL:Lcom/android/keychain/KeyChainActivity$State;

    iput-object v0, p0, Lcom/android/keychain/KeyChainActivity;->mState:Lcom/android/keychain/KeyChainActivity$State;

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sender"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Lcom/android/keychain/KeyChainActivity;->mSender:Landroid/app/PendingIntent;

    .line 109
    iget-object v1, p0, Lcom/android/keychain/KeyChainActivity;->mSender:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    .line 111
    invoke-direct {p0, v4}, Lcom/android/keychain/KeyChainActivity;->finish(Ljava/lang/String;)V

    .line 144
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 115
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keychain/KeyChainActivity;->mSender:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/IntentSender;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/keychain/KeyChainActivity;->mSenderUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    sget-object v1, Lcom/android/keychain/KeyChainActivity$6;->$SwitchMap$com$android$keychain$KeyChainActivity$State:[I

    iget-object v2, p0, Lcom/android/keychain/KeyChainActivity;->mState:Lcom/android/keychain/KeyChainActivity$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 146
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 117
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-direct {p0, v4}, Lcom/android/keychain/KeyChainActivity;->finish(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/keychain/KeyChainActivity;->isKeyStoreUnlocked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 128
    sget-object v1, Lcom/android/keychain/KeyChainActivity$State;->UNLOCK_REQUESTED:Lcom/android/keychain/KeyChainActivity$State;

    iput-object v1, p0, Lcom/android/keychain/KeyChainActivity;->mState:Lcom/android/keychain/KeyChainActivity$State;

    .line 129
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.credentials.UNLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/android/keychain/KeyChainActivity;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keychain/KeyChainActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    :cond_3
    invoke-direct {p0}, Lcom/android/keychain/KeyChainActivity;->showCertChooserDialog()V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 450
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 451
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity;->mState:Lcom/android/keychain/KeyChainActivity$State;

    sget-object v1, Lcom/android/keychain/KeyChainActivity$State;->INITIAL:Lcom/android/keychain/KeyChainActivity$State;

    if-eq v0, v1, :cond_0

    .line 452
    sget-object v0, Lcom/android/keychain/KeyChainActivity;->KEY_STATE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keychain/KeyChainActivity;->mState:Lcom/android/keychain/KeyChainActivity$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 454
    :cond_0
    return-void
.end method
