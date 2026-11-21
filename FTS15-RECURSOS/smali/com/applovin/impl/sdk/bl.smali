.class Lcom/applovin/impl/sdk/bl;
.super Lcom/applovin/impl/sdk/bt;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/bk;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/bk;Ljava/lang/String;Lcom/applovin/impl/sdk/bd;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bl;->a:Lcom/applovin/impl/sdk/bk;

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/impl/sdk/bt;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/bd;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bl;->a:Lcom/applovin/impl/sdk/bk;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/bk;->a(I)V

    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/sdk/o;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/bl;->a:Lcom/applovin/impl/sdk/bk;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bk;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bl;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/bb;->u:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0, p2}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/String;ILcom/applovin/impl/sdk/o;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bl;->a:Lcom/applovin/impl/sdk/bk;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/bk;->a(Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bl;->a:Lcom/applovin/impl/sdk/bk;

    invoke-virtual {v0, p2}, Lcom/applovin/impl/sdk/bk;->a(I)V

    goto :goto_0
.end method
