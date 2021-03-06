Dado("que eu realize a seguinte busca") do |table|
  produto = table.rows_hash
  @navegador.realizar_busca(produto)
end

Dado("seleciono um produto") do
  @catalogo.selecionar_produto()
end

Então("deve ver a tela de detalhes do produto") do
  elemento = find_element(xpath: "//android.widget.TextView[contains(@text,'Código')]")
  expect(elemento.displayed?).to be true
end

#filtros
Dado("que eu acesse o menu {string}") do |string|
  @navegador.selecionar_opcao_menus(string)
end

Dado("selecione a {string}") do |categoria|
  find_element(xpath: "//android.widget.TextView[@text='#{categoria}']").click
end

Dado("seleciono a {string}") do |categoria_datalhes|
  find_element(xpath: "//android.widget.TextView[@text='#{categoria_datalhes}']").click
end
Dado("seleciono o {string}") do |servico|
  if servico.length > 0
    find_element(xpath: "//android.widget.TextView[@text='#{servico}']").click
  end
end
