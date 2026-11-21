.class Lcom/applovin/impl/sdk/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ao;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/as;->a:Lcom/applovin/impl/sdk/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/as;->a:Lcom/applovin/impl/sdk/ao;

    iget-object v0, v0, Lcom/applovin/impl/sdk/ao;->a:Lcom/applovin/impl/sdk/an;

    invoke-static {v0}, Lcom/applovin/impl/sdk/an;->f(Lcom/applovin/impl/sdk/an;)Lcom/applovin/impl/sdk/w;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/as;->a:Lcom/applovin/impl/sdk/ao;

    iget-object v1, v1, Lcom/applovin/impl/sdk/ao;->a:Lcom/applovin/impl/sdk/an;

    invoke-static {v1}, Lcom/applovin/impl/sdk/an;->e(Lcom/applovin/impl/sdk/an;)Lcom/applovin/sdk/AppLovinAdRewardListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/w;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;)V

    return-void
.end method
