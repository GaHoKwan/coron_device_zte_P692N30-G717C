.class public Lcom/zte/heartyservice/packageinstaller/InstallerPermissionsList;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "InstallerPermissionsList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ufffd\ufffd\ufffd\ufffd\u02f3\ufffd\ufffd\ufffd\ufffd\u02f5\ufffd\ufffd\ufffd\ufffd\ufffd\u0135\ufffd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ufffd\ufffd\ufffd\ufffd\u013f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/InstallerPermissionsList;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super/range {p0 .. p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v3, 0x7f030061

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/packageinstaller/InstallerPermissionsList;->setContentView(I)V

    .line 35
    const v3, 0x7f0e010f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/packageinstaller/InstallerPermissionsList;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    .line 38
    .local v10, list:Landroid/widget/ListView;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v4, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/packageinstaller/InstallerPermissionsList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 42
    .local v17, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/packageinstaller/InstallerPermissionsList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 44
    .local v14, pi:Landroid/content/pm/PackageInfo;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 47
    .local v16, pkgName:Ljava/lang/String;
    const/16 v3, 0x1000

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 48
    .local v15, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    .line 50
    .local v18, sharedPkgList:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, v18

    array-length v3, v0

    if-ge v9, v3, :cond_0

    .line 51
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v11, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    aget-object v12, v18, v9

    .line 54
    .local v12, permName:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v19

    .line 57
    .local v19, tmpPermInfo:Landroid/content/pm/PermissionInfo;
    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v13

    .line 58
    .local v13, pgi:Landroid/content/pm/PermissionGroupInfo;
    const-string v3, "ItemTitle"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v3, "ItemText"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 67
    .end local v9           #i:I
    .end local v11           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12           #permName:Ljava/lang/String;
    .end local v13           #pgi:Landroid/content/pm/PermissionGroupInfo;
    .end local v14           #pi:Landroid/content/pm/PackageInfo;
    .end local v15           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v16           #pkgName:Ljava/lang/String;
    .end local v17           #pm:Landroid/content/pm/PackageManager;
    .end local v18           #sharedPkgList:[Ljava/lang/String;
    .end local v19           #tmpPermInfo:Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v8

    .line 68
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "##ddd"

    const-string v5, "Could\'nt retrieve permissions for package"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    new-instance v2, Landroid/widget/SimpleAdapter;

    const v5, 0x7f030062

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "ItemTitle"

    aput-object v7, v6, v3

    const/4 v3, 0x1

    const-string v7, "ItemText"

    aput-object v7, v6, v3

    const/4 v3, 0x2

    new-array v7, v3, [I

    fill-array-data v7, :array_0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 84
    .local v2, listItemAdapter:Landroid/widget/SimpleAdapter;
    invoke-virtual {v10, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    new-instance v3, Lcom/zte/heartyservice/packageinstaller/InstallerPermissionsList$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/zte/heartyservice/packageinstaller/InstallerPermissionsList$1;-><init>(Lcom/zte/heartyservice/packageinstaller/InstallerPermissionsList;)V

    invoke-virtual {v10, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    new-instance v3, Lcom/zte/heartyservice/packageinstaller/InstallerPermissionsList$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/zte/heartyservice/packageinstaller/InstallerPermissionsList$2;-><init>(Lcom/zte/heartyservice/packageinstaller/InstallerPermissionsList;)V

    invoke-virtual {v10, v3}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 103
    return-void

    .line 75
    :array_0
    .array-data 0x4
        0x10t 0x1t 0xet 0x7ft
        0x11t 0x1t 0xet 0x7ft
    .end array-data
.end method
