.class public Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactListMultiChoiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$3;,
        Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;
    }
.end annotation


# static fields
.field public static final CONTACTGROUPLISTACTIVITY_RESULT_CODE:I = 0x1

.field private static final DEFAULT_DIRECTORY_RESULT_LIMIT:I = 0x14

.field private static final KEY_ACTION_CODE:Ljava/lang/String; = "actionCode"

.field public static final RESTRICT_LIST:Ljava/lang/String; = "restrictlist"

.field private static final SUBACTIVITY_ADD_TO_EXISTING_CONTACT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactsMultiChoiceActivity"


# instance fields
.field private mActionCode:I

.field private mIntentResolverEx:Lcom/mediatek/contacts/list/ContactsIntentResolverEx;

.field private mIsSearchMode:Z

.field private mIsSelectedAll:Z

.field private mIsSelectedNone:Z

.field protected mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

.field private mNumberBalance:I

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSelectionMenu:Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 82
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mActionCode:I

    .line 68
    iput-boolean v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mIsSelectedAll:Z

    .line 69
    iput-boolean v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mIsSelectedNone:Z

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mIsSearchMode:Z

    .line 74
    const/16 v0, 0x64

    iput v0, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mNumberBalance:I

    .line 83
    new-instance v0, Lcom/mediatek/contacts/list/ContactsIntentResolverEx;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/list/ContactsIntentResolverEx;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mIntentResolverEx:Lcom/mediatek/contacts/list/ContactsIntentResolverEx;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->showActionBar(Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;)V

    return-void
.end method

.method private hideSoftKeyboard(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 633
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 634
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 635
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 639
    :goto_0
    return-void

    .line 637
    :cond_0
    const-string v1, "ContactsMultiChoiceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to hide soft Key board: imm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showActionBar(Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;)V
    .locals 21
    .parameter "mode"

    .prologue
    .line 428
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 429
    .local v2, actionBar:Landroid/app/ActionBar;
    sget-object v18, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$3;->$SwitchMap$com$mediatek$contacts$list$ContactListMultiChoiceActivity$SelectionMode:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 546
    :goto_0
    :pswitch_0
    return-void

    .line 431
    :pswitch_1
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mIsSearchMode:Z

    .line 432
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 433
    invoke-virtual {v2}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v18

    const v19, 0x7f040098

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 436
    .local v15, searchViewContainer:Landroid/view/View;
    const v18, 0x7f070176

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 438
    .local v6, contactHome:Landroid/widget/ImageButton;
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    const v18, 0x7f07009f

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 440
    .local v17, selectView:Landroid/widget/Button;
    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 442
    const v18, 0x7f0700f9

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/SearchView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v18, v0

    const v19, 0x7f0c02a4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 454
    new-instance v18, Landroid/app/ActionBar$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v15, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 456
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 457
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 458
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 461
    const v18, 0x7f07009c

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 463
    .local v5, cancelView:Landroid/widget/Button;
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 464
    .local v4, cancelText:Ljava/lang/String;
    const-string v18, "Cancel"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 465
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 466
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    const/high16 v18, 0x4140

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 469
    :cond_0
    sget-object v18, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 470
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    const v18, 0x7f070178

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 474
    .local v14, optionView:Landroid/widget/Button;
    sget-object v18, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 475
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mIsSelectedNone:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 477
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 478
    const v18, -0x333334

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 483
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 480
    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 481
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 487
    .end local v4           #cancelText:Ljava/lang/String;
    .end local v5           #cancelView:Landroid/widget/Button;
    .end local v6           #contactHome:Landroid/widget/ImageButton;
    .end local v14           #optionView:Landroid/widget/Button;
    .end local v15           #searchViewContainer:Landroid/view/View;
    .end local v17           #selectView:Landroid/widget/Button;
    :pswitch_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mIsSearchMode:Z

    .line 488
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 490
    const-string v18, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 491
    .local v10, inflater:Landroid/view/LayoutInflater;
    const v18, 0x7f040098

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 494
    .local v8, customActionBarView:Landroid/view/View;
    const v18, 0x102002c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 497
    .local v9, homeView:Landroid/widget/ImageView;
    const v18, 0x7f0700f9

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/SearchView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 501
    const v18, 0x7f070176

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 504
    .local v7, contactHomeView:Landroid/widget/ImageButton;
    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    const v18, 0x7f07009f

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 510
    .local v16, selectItems:Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f020049

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 512
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    const v18, 0x7f07009c

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 516
    .local v3, cancel:Landroid/widget/Button;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 517
    .local v11, listCancelText:Ljava/lang/String;
    const-string v18, "Cancel"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 518
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 519
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    const/high16 v18, 0x4140

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 522
    :cond_2
    sget-object v18, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 523
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    const v18, 0x7f070178

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 527
    .local v12, menuOption:Landroid/widget/Button;
    sget-object v18, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 528
    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 529
    .local v13, optionText:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    const/16 v18, 0x10

    const/16 v19, 0x1a

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 535
    invoke-virtual {v2, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 537
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    goto/16 :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 361
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 363
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 364
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    const-string v1, "ContactsMultiChoiceActivity"

    const-string v2, "Failed to show soft input method."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    return-void
.end method

.method private updateSelectionMenu(Landroid/view/View;)Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;
    .locals 7
    .parameter "customActionBarView"

    .prologue
    const v6, 0x7f07009f

    .line 569
    new-instance v0, Lcom/mediatek/contacts/list/DropMenu;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/list/DropMenu;-><init>(Landroid/content/Context;)V

    .line 571
    .local v0, dropMenu:Lcom/mediatek/contacts/list/DropMenu;
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f100010

    invoke-virtual {v0, v4, v5}, Lcom/mediatek/contacts/list/DropMenu;->addDropDownMenu(Landroid/widget/Button;I)Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;

    move-result-object v3

    .line 574
    .local v3, selectionMenu:Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 576
    .local v2, selectView:Landroid/widget/Button;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 579
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    const v4, 0x7f07020c

    invoke-virtual {v3, v4}, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 583
    .local v1, item:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    invoke-virtual {v4}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->updateSelectedItemsView()V

    .line 584
    iget-object v4, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    invoke-virtual {v4}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->isSelectedAll()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mIsSelectedAll:Z

    .line 586
    iget-boolean v4, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mIsSelectedAll:Z

    if-eqz v4, :cond_0

    .line 588
    const v4, 0x7f0c0282

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 590
    new-instance v4, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$1;

    invoke-direct {v4, p0}, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$1;-><init>(Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;)V

    invoke-virtual {v0, v4}, Lcom/mediatek/contacts/list/DropMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 611
    :goto_0
    return-object v3

    .line 600
    :cond_0
    const v4, 0x7f0c0281

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 602
    new-instance v4, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$2;

    invoke-direct {v4, p0}, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$2;-><init>(Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;)V

    invoke-virtual {v0, v4}, Lcom/mediatek/contacts/list/DropMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public configureListFragment()V
    .locals 4

    .prologue
    .line 238
    iget v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mActionCode:I

    iget-object v2, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 313
    :goto_0
    return-void

    .line 242
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    iput v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mActionCode:I

    .line 244
    const-string v1, "ContactsMultiChoiceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configureListFragment action code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mActionCode:I

    sparse-switch v1, :sswitch_data_0

    .line 303
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :sswitch_0
    new-instance v1, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;

    invoke-direct {v1}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;-><init>()V

    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    .line 306
    :goto_1
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    iget-object v2, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setLegacyCompatibilityMode(Z)V

    .line 307
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    iget-object v2, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 308
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectoryResultLimit(I)V

    .line 309
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 311
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0700fa

    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_0

    .line 254
    :sswitch_1
    new-instance v1, Lcom/mediatek/contacts/list/ContactsVCardPickerFragment;

    invoke-direct {v1}, Lcom/mediatek/contacts/list/ContactsVCardPickerFragment;-><init>()V

    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    goto :goto_1

    .line 259
    :sswitch_2
    new-instance v1, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    invoke-direct {v1}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;-><init>()V

    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    .line 260
    const-string v1, "intent"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 261
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    .line 265
    :sswitch_3
    new-instance v1, Lcom/mediatek/contacts/list/MultiEmailsPickerFragment;

    invoke-direct {v1}, Lcom/mediatek/contacts/list/MultiEmailsPickerFragment;-><init>()V

    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    goto :goto_1

    .line 269
    :sswitch_4
    new-instance v1, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;

    invoke-direct {v1}, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerFragment;-><init>()V

    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    goto :goto_1

    .line 273
    :sswitch_5
    new-instance v1, Lcom/mediatek/contacts/list/MultiDataItemsPickerFragment;

    invoke-direct {v1}, Lcom/mediatek/contacts/list/MultiDataItemsPickerFragment;-><init>()V

    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    .line 274
    const-string v1, "intent"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 275
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    .line 279
    :sswitch_6
    new-instance v1, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;

    invoke-direct {v1}, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;-><init>()V

    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    goto/16 :goto_1

    .line 283
    :sswitch_7
    new-instance v1, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;

    invoke-direct {v1}, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment;-><init>()V

    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    .line 284
    const-string v1, "intent"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 285
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 289
    :sswitch_8
    new-instance v1, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerFragment;

    invoke-direct {v1}, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerFragment;-><init>()V

    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    goto/16 :goto_1

    .line 293
    :sswitch_9
    new-instance v1, Lcom/mediatek/contacts/list/MultiContactsShareFragment;

    invoke-direct {v1}, Lcom/mediatek/contacts/list/MultiContactsShareFragment;-><init>()V

    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    goto/16 :goto_1

    .line 297
    :sswitch_a
    new-instance v1, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsFragment;

    invoke-direct {v1}, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsFragment;-><init>()V

    iput-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    .line 298
    const-string v1, "intent"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 299
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 246
    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_0
        0x3e -> :sswitch_6
        0x3f -> :sswitch_7
        0x40 -> :sswitch_9
        0x41 -> :sswitch_a
        0x5b -> :sswitch_4
        0x5c -> :sswitch_8
        0x5d -> :sswitch_5
        0x6a -> :sswitch_3
        0x100003d -> :sswitch_1
        0x200003d -> :sswitch_2
    .end sparse-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 384
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 385
    if-nez p1, :cond_1

    .line 386
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 387
    if-eqz p3, :cond_0

    .line 388
    invoke-virtual {p0, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 390
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 394
    :cond_1
    const v2, 0x1b208

    if-ne p2, v2, :cond_2

    .line 395
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 398
    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 399
    const-string v2, "checkedids"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 400
    .local v1, ids:[J
    iget-object v2, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    instance-of v2, v2, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerFragment;

    if-eqz v2, :cond_3

    .line 401
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    check-cast v0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerFragment;

    .line 402
    .local v0, fragment:Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerFragment;
    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->markItemsAsSelectedForCheckedGroups([J)V

    .line 405
    .end local v0           #fragment:Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerFragment;
    .end local v1           #ids:[J
    :cond_3
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 88
    instance-of v0, p1, Lcom/mediatek/contacts/list/AbstractPickerFragment;

    if-eqz v0, :cond_0

    .line 89
    check-cast p1, Lcom/mediatek/contacts/list/AbstractPickerFragment;

    .end local p1
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    .line 91
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 412
    :cond_0
    sget-object v0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;->ListMode:Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->showActionBar(Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;)V

    .line 413
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    invoke-virtual {v0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->updateSelectedItemsView()V

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 417
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 170
    .local v2, resId:I
    sparse-switch v2, :sswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 172
    :sswitch_0
    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    invoke-virtual {v3}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->updateSelectedItemsView()V

    .line 173
    sget-object v3, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;->SearchMode:Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;

    invoke-direct {p0, v3}, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->showActionBar(Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;)V

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    goto :goto_0

    .line 179
    :sswitch_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 184
    :sswitch_2
    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    instance-of v3, v3, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    if-eqz v3, :cond_0

    .line 185
    const-string v3, "ContactsMultiChoiceActivity"

    const-string v4, "Send result for copy action"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const v3, 0x1b208

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 188
    :cond_0
    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    instance-of v3, v3, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerFragment;

    if-eqz v3, :cond_1

    .line 189
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    check-cast v0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerFragment;

    .line 190
    .local v0, fragment:Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerFragment;
    iget v3, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mNumberBalance:I

    invoke-virtual {v0, v3}, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerFragment;->setNumberBalance(I)V

    .line 191
    invoke-virtual {v0}, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerFragment;->onOptionAction()V

    goto :goto_0

    .line 193
    .end local v0           #fragment:Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerFragment;
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    invoke-virtual {v3}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->onOptionAction()V

    goto :goto_0

    .line 200
    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_2

    .line 201
    const-string v3, "ContactsMultiChoiceActivity"

    const-string v4, "onClick,current Activity dinsow is null"

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_2
    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSelectionMenu:Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSelectionMenu:Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;

    invoke-virtual {v3}, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->isShown()Z

    move-result v3

    if-nez v3, :cond_4

    .line 205
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 206
    .local v1, parent:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->updateSelectionMenu(Landroid/view/View;)Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSelectionMenu:Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;

    .line 207
    iget-object v3, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSelectionMenu:Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;

    invoke-virtual {v3}, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->show()V

    goto :goto_0

    .line 209
    .end local v1           #parent:Landroid/view/View;
    :cond_4
    const-string v3, "ContactsMultiChoiceActivity"

    const-string v4, "mSelectionMenu is already showing, ignore this click"

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :sswitch_data_0
    .sparse-switch
        0x7f07009c -> :sswitch_1
        0x7f07009f -> :sswitch_3
        0x7f070176 -> :sswitch_1
        0x7f070178 -> :sswitch_2
        0x7f0701ff -> :sswitch_0
    .end sparse-switch
.end method

.method public onClose()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 340
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v1, :cond_0

    .line 341
    const/4 v0, 0x0

    .line 348
    :goto_0
    return v0

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 346
    :cond_1
    sget-object v1, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;->ListMode:Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->showActionBar(Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;)V

    .line 347
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    invoke-virtual {v1}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->updateSelectedItemsView()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 422
    const-string v0, "ContactsMultiChoiceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onConfigurationChanged]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 425
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedState"

    .prologue
    const/16 v6, 0x8

    .line 95
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 98
    .local v1, mmsIntent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 99
    const-string v4, "NUMBER_BALANCE"

    const/16 v5, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mNumberBalance:I

    .line 102
    :cond_0
    if-eqz p1, :cond_1

    .line 103
    const-string v4, "actionCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mActionCode:I

    .line 104
    const-string v4, "NUMBER_BALANCE"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mNumberBalance:I

    .line 108
    :cond_1
    iget-object v4, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mIntentResolverEx:Lcom/mediatek/contacts/list/ContactsIntentResolverEx;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/contacts/list/ContactsIntentResolverEx;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 109
    iget-object v4, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 110
    const-string v4, "ContactsMultiChoiceActivity"

    const-string v5, "Request is invalid!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 139
    :goto_0
    return-void

    .line 116
    :cond_2
    iget-object v4, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v2

    .line 117
    .local v2, redirect:Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 119
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 124
    :cond_3
    const v4, 0x7f04003c

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 126
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->configureListFragment()V

    .line 129
    const v4, 0x7f0700f9

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    .line 130
    .local v3, searchViewInListview:Landroid/widget/SearchView;
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 133
    const v4, 0x7f0700fb

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, createNewContactButton:Landroid/view/View;
    if-eqz v0, :cond_4

    .line 135
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :cond_4
    sget-object v4, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;->ListMode:Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;

    invoke-direct {p0, v4}, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->showActionBar(Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 160
    .local v0, inflater:Landroid/view/MenuInflater;
    const v2, 0x7f10000d

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 162
    const v2, 0x7f0701ff

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 163
    .local v1, optionItem:Landroid/view/MenuItem;
    const v2, 0x7f0c0125

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 164
    const/4 v2, 0x1

    return v2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 144
    const-string v0, "ContactsMultiChoiceActivity"

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0700f9

    if-ne v0, v1, :cond_0

    .line 354
    if-eqz p2, :cond_0

    .line 355
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->showInputMethod(Landroid/view/View;)V

    .line 358
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 221
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 223
    .local v0, itemId:I
    const v1, 0x7f0701ff

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    invoke-virtual {v1}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->updateSelectedItemsView()V

    .line 225
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    invoke-virtual {v1}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->isSelectedNone()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mIsSelectedNone:Z

    .line 226
    sget-object v1, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;->SearchMode:Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->showActionBar(Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity$SelectionMode;)V

    .line 227
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 228
    const/4 v1, 0x1

    .line 231
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 550
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 551
    iget-object v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->hideSoftKeyboard(Landroid/view/View;)V

    .line 552
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->onBackPressed()V

    .line 560
    :goto_0
    return v0

    .line 555
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f070200

    if-ne v1, v2, :cond_1

    .line 556
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/contacts/list/ContactGroupListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 560
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 616
    const v3, 0x7f0701ff

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 617
    .local v1, menuItem:Landroid/view/MenuItem;
    iget-boolean v3, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mIsSearchMode:Z

    if-eqz v3, :cond_0

    .line 619
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 628
    :goto_0
    return v2

    .line 623
    :cond_0
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 624
    iget-object v2, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    instance-of v2, v2, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerFragment;

    if-eqz v2, :cond_1

    .line 625
    const v2, 0x7f070200

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 626
    .local v0, groupsItem:Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 628
    .end local v0           #groupsItem:Landroid/view/MenuItem;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    goto :goto_0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mListFragment:Lcom/mediatek/contacts/list/AbstractPickerFragment;

    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->startSearch(Ljava/lang/String;)V

    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 150
    const-string v0, "actionCode"

    iget v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    const-string v0, "NUMBER_BALANCE"

    iget v1, p0, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->mNumberBalance:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    return-void
.end method

.method public returnPickerResult(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 377
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 378
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 379
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 380
    return-void
.end method

.method public returnPickerResult(Landroid/net/Uri;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 371
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 372
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 374
    return-void
.end method

.method public startActivityAndForwardResult(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 316
    const/high16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 320
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 323
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 324
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 325
    return-void
.end method
